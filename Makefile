.PHONY: $(sort $(dir $(wildcard */)))

all: clean openstack europe-example-region

europe-example-region: build-europe-example-region

openstack: memcached rabbitmq healthchecks
openstack: build-openstack

healthchecks: build-healthchecks

memcached: build-memcached

#dependencies
pg_metrics: build-pg_metrics
postgres: build-postgres pg_metrics
rabbitmq: build-rabbitmq
utils: build-utils


lint: lint-europe-example-region
lint: lint-memcached lint-openstack lint-postgres
lint: lint-rabbitmq lint-utils lint-pg_metrics

build-%:
	if [ -f $*/requirements.yaml ]; then helm dep up --skip-refresh $*; fi
	helm package $*

lint-%:
	helm lint $*

clean:
	find . -name "*.tgz" -exec rm '{}' +
