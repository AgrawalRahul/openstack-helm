{{- define "vmware_hypervisor" }}
{{- $hypervisor := index . 1 }}
{{- with index . 0 }}
kind: Deployment
apiVersion: extensions/v1beta1
metadata:
  name: nova-compute-{{$hypervisor.name}}
  labels:
    system: openstack
    type: backend
    component: nova
spec:
  replicas: 1
  revisionHistoryLimit: {{ .Values.pod.lifecycle.upgrades.deployments.revision_history }}
  strategy:
    type: Recreate
  selector:
    matchLabels:
      name: nova-compute-{{$hypervisor.name}}
  template:
    metadata:
      labels:
        name: nova-compute-{{$hypervisor.name}}
{{ tuple . "nova" (print "compute-" $hypervisor.name) | include "helm-toolkit.snippets.kubernetes_metadata_labels" | indent 8 }}
      annotations:
        pod.beta.kubernetes.io/hostname: nova-compute-{{$hypervisor.name}}
        prometheus.io/scrape: "true"
        prometheus.io/port: "9102"
        configmap-etc-hash: {{ include (print .Template.BasePath "/etc-configmap.yaml") . | sha256sum }}
        configmap-ironic-etc-hash: {{ tuple . $hypervisor | include "vmware_configmap" | sha256sum }}
    spec:
      containers:
        - name: nova-compute-{{$hypervisor.name}}
          image: {{.Values.global.image_repository}}/{{.Values.global.image_namespace}}/ubuntu-source-nova-compute:{{.Values.image_version_nova_compute}}
          imagePullPolicy: IfNotPresent
          command:
            - kubernetes-entrypoint
          env:
            - name: COMMAND
              value: "nova-compute --config-file /etc/nova/nova.conf --config-file /etc/nova/hypervisor.conf"
            - name: NAMESPACE
              value: {{ .Release.Namespace }}
            - name: SENTRY_DSN
              value: {{.Values.sentry_dsn | quote}}
{{- if or $hypervisor.python_warnings .Values.python_warnings }}
            - name: PYTHONWARNINGS
              value: {{ or $hypervisor.python_warnings .Values.python_warnings | quote }}
{{- end }}
          volumeMounts:
            - mountPath: /etc/nova
              name: etcnova
            - mountPath: /etc/nova/nova.conf
              name: nova-etc
              subPath: nova.conf
              readOnly: true
            - mountPath: /etc/nova/api-paste.ini
              name: nova-etc
              subPath: api-paste.ini
              readOnly: true
            - mountPath: /etc/nova/policy.json
              name: nova-etc
              subPath: policy.json
              readOnly: true
            - mountPath: /etc/nova/logging.conf
              name: nova-etc
              subPath: logging.conf
              readOnly: true
            - mountPath: /etc/nova/hypervisor.conf
              name: hypervisor-config
              subPath: hypervisor.conf
              readOnly: true
            - mountPath: /nova-patches
              name: nova-patches
        - name: neutron-dvs-agent
          image: {{.Values.global.image_repository}}/{{.Values.global.image_namespace}}/ubuntu-source-neutron-server-m3:{{.Values.image_version_neutron_server_m3}}
          imagePullPolicy: IfNotPresent
          command:
            - /container.init/neutron-dvs-agent-start
          livenessProbe:
            initialDelaySeconds: 300
            periodSeconds: 5
            exec:
              command:
              - bash
              - -c
              - "[ -f /tmp/neutron-dvs-agent.alive ] && [ $((`date +%s` - `date -r /tmp/neutron-dvs-agent.alive +%s`)) -lt 300 ]"
          env:
            - name: DEBUG_CONTAINER
              value: "false"
            - name: STATSD_HOST
              value: "localhost"
            - name: STATSD_PORT
              value: "9125"
{{- if or $hypervisor.python_warnings .Values.python_warnings}}
            - name: PYTHONWARNINGS
              value: {{ or $hypervisor.python_warnings .Values.python_warnings | quote }}
{{- end }}
          volumeMounts:
            - mountPath: /neutron-etc
              name: neutron-etc
            - mountPath: /ml2-conf-vmware
              name: ml2-conf-vmware
            - mountPath: /container.init
              name: neutron-container-init
        - name: statsd
          image: prom/statsd-exporter
          imagePullPolicy: IfNotPresent
          ports:
            - name: statsd
              containerPort: 9125
              protocol: UDP
            - name: metrics
              containerPort: 9102
      volumes:
        - name: etcnova
          emptyDir: {}
        - name: nova-etc
          configMap:
            name: nova-etc
        - name: nova-patches
          configMap:
            name: nova-patches
        - name: hypervisor-config
          configMap:
            name: hypervisor-{{$hypervisor.name}}
        - name: nova-container-init
          configMap:
            name: nova-bin
            defaultMode: 0755
        - name: neutron-etc
          configMap:
            name: neutron-etc
        - name: ml2-conf-vmware
          configMap:
            name: ml2-vmware-{{$hypervisor.name}}-ini
        - name: neutron-container-init
          configMap:
            name: neutron-bin-vendor
            defaultMode: 0755
{{- end }}
{{- end }}
