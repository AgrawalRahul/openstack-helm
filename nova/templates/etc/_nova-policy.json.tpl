{
    "context_is_admin":  "role:admin",
    "admin_or_owner":  "is_admin:True or project_id:%(project_id)s",
    "default": "rule:admin_or_owner",

    "cells_scheduler_filter:TargetCellFilter": "is_admin:True",

    "compute:create": "rule:admin_or_owner",
    "compute:create:attach_network": "rule:admin_or_owner",
    "compute:create:attach_volume": "rule:admin_or_owner",
    "compute:create:forced_host": "is_admin:True",

    "compute:get": "rule:admin_or_owner",
    "compute:get_all": "rule:admin_or_owner",
    "compute:get_all_tenants": "is_admin:True",

    "compute:update": "rule:admin_or_owner",

    "compute:get_instance_metadata": "rule:admin_or_owner",
    "compute:get_all_instance_metadata": "rule:admin_or_owner",
    "compute:get_all_instance_system_metadata": "rule:admin_or_owner",
    "compute:update_instance_metadata": "rule:admin_or_owner",
    "compute:delete_instance_metadata": "rule:admin_or_owner",

    "compute:get_diagnostics": "rule:admin_or_owner",
    "compute:get_instance_diagnostics": "rule:admin_or_owner",

    "compute:start": "rule:admin_or_owner",
    "compute:stop": "rule:admin_or_owner",

    "compute:lock": "rule:admin_or_owner",
    "compute:unlock": "rule:admin_or_owner",
    "compute:unlock_override": "rule:admin_api",

    "compute:get_vnc_console": "rule:admin_or_owner",
    "compute:get_spice_console": "rule:admin_or_owner",
    "compute:get_rdp_console": "rule:admin_or_owner",
    "compute:get_serial_console": "rule:admin_or_owner",
    "compute:get_mks_console": "rule:admin_or_owner",
    "compute:get_console_output": "rule:admin_or_owner",

    "compute:reset_network": "rule:admin_or_owner",
    "compute:inject_network_info": "rule:admin_or_owner",
    "compute:add_fixed_ip": "rule:admin_or_owner",
    "compute:remove_fixed_ip": "rule:admin_or_owner",

    "compute:attach_volume": "rule:admin_or_owner",
    "compute:detach_volume": "rule:admin_or_owner",
    "compute:swap_volume": "rule:admin_or_owner",

    "compute:attach_interface": "rule:admin_or_owner",
    "compute:detach_interface": "rule:admin_or_owner",

    "compute:set_admin_password": "rule:admin_or_owner",

    "compute:rescue": "rule:admin_or_owner",
    "compute:unrescue": "rule:admin_or_owner",

    "compute:suspend": "rule:admin_or_owner",
    "compute:resume": "rule:admin_or_owner",

    "compute:pause": "rule:admin_or_owner",
    "compute:unpause": "rule:admin_or_owner",

    "compute:shelve": "rule:admin_or_owner",
    "compute:shelve_offload": "rule:admin_or_owner",
    "compute:unshelve": "rule:admin_or_owner",

    "compute:snapshot": "rule:admin_or_owner",
    "compute:snapshot_volume_backed": "rule:admin_or_owner",
    "compute:backup": "rule:admin_or_owner",

    "compute:resize": "rule:admin_or_owner",
    "compute:confirm_resize": "rule:admin_or_owner",
    "compute:revert_resize": "rule:admin_or_owner",

    "compute:rebuild": "rule:admin_or_owner",
    "compute:reboot": "rule:admin_or_owner",
    "compute:delete": "rule:admin_or_owner",
    "compute:soft_delete": "rule:admin_or_owner",
    "compute:force_delete": "rule:admin_or_owner",

    "compute:security_groups:add_to_instance": "rule:admin_or_owner",
    "compute:security_groups:remove_from_instance": "rule:admin_or_owner",

    "compute:restore": "rule:admin_or_owner",

    "compute:volume_snapshot_create": "rule:admin_or_owner",
    "compute:volume_snapshot_delete": "rule:admin_or_owner",

    "admin_api": "is_admin:True",
    "compute_extension:accounts": "rule:admin_api",
    "compute_extension:admin_actions": "rule:admin_api",
    "compute_extension:admin_actions:pause": "rule:admin_or_owner",
    "compute_extension:admin_actions:unpause": "rule:admin_or_owner",
    "compute_extension:admin_actions:suspend": "rule:admin_or_owner",
    "compute_extension:admin_actions:resume": "rule:admin_or_owner",
    "compute_extension:admin_actions:lock": "rule:admin_or_owner",
    "compute_extension:admin_actions:unlock": "rule:admin_or_owner",
    "compute_extension:admin_actions:resetNetwork": "rule:admin_api",
    "compute_extension:admin_actions:injectNetworkInfo": "rule:admin_api",
    "compute_extension:admin_actions:createBackup": "rule:admin_or_owner",
    "compute_extension:admin_actions:migrateLive": "rule:admin_api",
    "compute_extension:admin_actions:resetState": "rule:admin_api",
    "compute_extension:admin_actions:migrate": "rule:admin_api",
    "compute_extension:aggregates": "rule:admin_api",
    "compute_extension:agents": "rule:admin_api",
    "compute_extension:attach_interfaces": "rule:admin_or_owner",
    "compute_extension:baremetal_nodes": "rule:admin_api",
    "compute_extension:cells": "rule:admin_api",
    "compute_extension:cells:create": "rule:admin_api",
    "compute_extension:cells:delete": "rule:admin_api",
    "compute_extension:cells:update": "rule:admin_api",
    "compute_extension:cells:sync_instances": "rule:admin_api",
    "compute_extension:certificates": "rule:admin_or_owner",
    "compute_extension:cloudpipe": "rule:admin_api",
    "compute_extension:cloudpipe_update": "rule:admin_api",
    "compute_extension:config_drive": "rule:admin_or_owner",
    "compute_extension:console_output": "rule:admin_or_owner",
    "compute_extension:consoles": "rule:admin_or_owner",
    "compute_extension:createserverext": "rule:admin_or_owner",
    "compute_extension:deferred_delete": "rule:admin_or_owner",
    "compute_extension:disk_config": "rule:admin_or_owner",
    "compute_extension:evacuate": "rule:admin_api",
    "compute_extension:extended_server_attributes": "rule:admin_api",
    "compute_extension:extended_status": "rule:admin_or_owner",
    "compute_extension:extended_availability_zone": "rule:admin_or_owner",
    "compute_extension:extended_ips": "rule:admin_or_owner",
    "compute_extension:extended_ips_mac": "rule:admin_or_owner",
    "compute_extension:extended_vif_net": "rule:admin_or_owner",
    "compute_extension:extended_volumes": "rule:admin_or_owner",
    "compute_extension:fixed_ips": "rule:admin_api",
    "compute_extension:flavor_access": "rule:admin_or_owner",
    "compute_extension:flavor_access:addTenantAccess": "rule:admin_api",
    "compute_extension:flavor_access:removeTenantAccess": "rule:admin_api",
    "compute_extension:flavor_disabled": "rule:admin_or_owner",
    "compute_extension:flavor_rxtx": "rule:admin_or_owner",
    "compute_extension:flavor_swap": "rule:admin_or_owner",
    "compute_extension:flavorextradata": "rule:admin_or_owner",
    "compute_extension:flavorextraspecs:index": "rule:admin_or_owner",
    "compute_extension:flavorextraspecs:show": "rule:admin_or_owner",
    "compute_extension:flavorextraspecs:create": "rule:admin_api",
    "compute_extension:flavorextraspecs:update": "rule:admin_api",
    "compute_extension:flavorextraspecs:delete": "rule:admin_api",
    "compute_extension:flavormanage": "rule:admin_api",
    "compute_extension:floating_ip_dns": "rule:admin_or_owner",
    "compute_extension:floating_ip_pools": "rule:admin_or_owner",
    "compute_extension:floating_ips": "rule:admin_or_owner",
    "compute_extension:floating_ips_bulk": "rule:admin_api",
    "compute_extension:fping": "rule:admin_or_owner",
    "compute_extension:fping:all_tenants": "rule:admin_api",
    "compute_extension:hide_server_addresses": "is_admin:False",
    "compute_extension:hosts": "rule:admin_api",
    "compute_extension:hypervisors": "rule:admin_api",
    "compute_extension:image_size": "rule:admin_or_owner",
    "compute_extension:instance_actions": "rule:admin_or_owner",
    "compute_extension:instance_actions:events": "rule:admin_api",
    "compute_extension:instance_usage_audit_log": "rule:admin_api",
    "compute_extension:keypairs": "rule:admin_or_owner",
    "compute_extension:keypairs:index": "rule:admin_or_owner",
    "compute_extension:keypairs:show": "rule:admin_or_owner",
    "compute_extension:keypairs:create": "rule:admin_or_owner",
    "compute_extension:keypairs:delete": "rule:admin_or_owner",
    "compute_extension:multinic": "rule:admin_or_owner",
    "compute_extension:networks": "rule:admin_api",
    "compute_extension:networks:view": "rule:admin_or_owner",
    "compute_extension:networks_associate": "rule:admin_api",
    "compute_extension:os-tenant-networks": "rule:admin_or_owner",
    "compute_extension:quotas:show": "rule:admin_or_owner",
    "compute_extension:quotas:update": "rule:admin_api",
    "compute_extension:quotas:delete": "rule:admin_api",
    "compute_extension:quota_classes": "rule:admin_or_owner",
    "compute_extension:rescue": "rule:admin_or_owner",
    "compute_extension:security_group_default_rules": "rule:admin_api",
    "compute_extension:security_groups": "rule:admin_or_owner",
    "compute_extension:server_diagnostics": "rule:admin_api",
    "compute_extension:server_groups": "rule:admin_or_owner",
    "compute_extension:server_password": "rule:admin_or_owner",
    "compute_extension:server_usage": "rule:admin_or_owner",
    "compute_extension:services": "rule:admin_api",
    "compute_extension:shelve": "rule:admin_or_owner",
    "compute_extension:shelveOffload": "rule:admin_api",
    "compute_extension:simple_tenant_usage:show": "rule:admin_or_owner",
    "compute_extension:simple_tenant_usage:list": "rule:admin_api",
    "compute_extension:unshelve": "rule:admin_or_owner",
    "compute_extension:users": "rule:admin_api",
    "compute_extension:virtual_interfaces": "rule:admin_or_owner",
    "compute_extension:virtual_storage_arrays": "rule:admin_or_owner",
    "compute_extension:volumes": "rule:admin_or_owner",
    "compute_extension:volume_attachments:index": "rule:admin_or_owner",
    "compute_extension:volume_attachments:show": "rule:admin_or_owner",
    "compute_extension:volume_attachments:create": "rule:admin_or_owner",
    "compute_extension:volume_attachments:update": "rule:admin_or_owner",
    "compute_extension:volume_attachments:delete": "rule:admin_or_owner",
    "compute_extension:volumetypes": "rule:admin_or_owner",
    "compute_extension:availability_zone:list": "rule:admin_or_owner",
    "compute_extension:availability_zone:detail": "rule:admin_api",
    "compute_extension:used_limits_for_admin": "rule:admin_api",
    "compute_extension:migrations:index": "rule:admin_api",
    "compute_extension:os-assisted-volume-snapshots:create": "rule:admin_api",
    "compute_extension:os-assisted-volume-snapshots:delete": "rule:admin_api",
    "compute_extension:console_auth_tokens": "rule:admin_api",
    "compute_extension:os-server-external-events:create": "rule:admin_api",

    "network:get_all": "rule:admin_or_owner",
    "network:get": "rule:admin_or_owner",
    "network:create": "rule:admin_or_owner",
    "network:delete": "rule:admin_or_owner",
    "network:associate": "rule:admin_or_owner",
    "network:disassociate": "rule:admin_or_owner",
    "network:get_vifs_by_instance": "rule:admin_or_owner",
    "network:allocate_for_instance": "rule:admin_or_owner",
    "network:deallocate_for_instance": "rule:admin_or_owner",
    "network:validate_networks": "rule:admin_or_owner",
    "network:get_instance_uuids_by_ip_filter": "rule:admin_or_owner",
    "network:get_instance_id_by_floating_address": "rule:admin_or_owner",
    "network:setup_networks_on_host": "rule:admin_or_owner",
    "network:get_backdoor_port": "rule:admin_or_owner",

    "network:get_floating_ip": "rule:admin_or_owner",
    "network:get_floating_ip_pools": "rule:admin_or_owner",
    "network:get_floating_ip_by_address": "rule:admin_or_owner",
    "network:get_floating_ips_by_project": "rule:admin_or_owner",
    "network:get_floating_ips_by_fixed_address": "rule:admin_or_owner",
    "network:allocate_floating_ip": "rule:admin_or_owner",
    "network:associate_floating_ip": "rule:admin_or_owner",
    "network:disassociate_floating_ip": "rule:admin_or_owner",
    "network:release_floating_ip": "rule:admin_or_owner",
    "network:migrate_instance_start": "rule:admin_or_owner",
    "network:migrate_instance_finish": "rule:admin_or_owner",

    "network:get_fixed_ip": "rule:admin_or_owner",
    "network:get_fixed_ip_by_address": "rule:admin_or_owner",
    "network:add_fixed_ip_to_instance": "rule:admin_or_owner",
    "network:remove_fixed_ip_from_instance": "rule:admin_or_owner",
    "network:add_network_to_project": "rule:admin_or_owner",
    "network:get_instance_nw_info": "rule:admin_or_owner",

    "network:get_dns_domains": "rule:admin_or_owner",
    "network:add_dns_entry": "rule:admin_or_owner",
    "network:modify_dns_entry": "rule:admin_or_owner",
    "network:delete_dns_entry": "rule:admin_or_owner",
    "network:get_dns_entries_by_address": "rule:admin_or_owner",
    "network:get_dns_entries_by_name": "rule:admin_or_owner",
    "network:create_private_dns_domain": "rule:admin_or_owner",
    "network:create_public_dns_domain": "rule:admin_or_owner",
    "network:delete_dns_domain": "rule:admin_or_owner",
    "network:attach_external_network": "rule:admin_api",
    "network:get_vif_by_mac_address": "rule:admin_or_owner",

    "os_compute_api:servers:detail:get_all_tenants": "is_admin:True",
    "os_compute_api:servers:index:get_all_tenants": "is_admin:True",
    "os_compute_api:servers:confirm_resize": "rule:admin_or_owner",
    "os_compute_api:servers:create": "rule:admin_or_owner",
    "os_compute_api:servers:create:attach_network": "rule:admin_or_owner",
    "os_compute_api:servers:create:attach_volume": "rule:admin_or_owner",
    "os_compute_api:servers:create:forced_host": "rule:admin_api",
    "os_compute_api:servers:delete": "rule:admin_or_owner",
    "os_compute_api:servers:update": "rule:admin_or_owner",
    "os_compute_api:servers:detail": "rule:admin_or_owner",
    "os_compute_api:servers:index": "rule:admin_or_owner",
    "os_compute_api:servers:reboot": "rule:admin_or_owner",
    "os_compute_api:servers:rebuild": "rule:admin_or_owner",
    "os_compute_api:servers:resize": "rule:admin_or_owner",
    "os_compute_api:servers:revert_resize": "rule:admin_or_owner",
    "os_compute_api:servers:show": "rule:admin_or_owner",
    "os_compute_api:servers:show:host_status": "rule:admin_api",
    "os_compute_api:servers:create_image": "rule:admin_or_owner",
    "os_compute_api:servers:create_image:allow_volume_backed": "rule:admin_or_owner",
    "os_compute_api:servers:start": "rule:admin_or_owner",
    "os_compute_api:servers:stop": "rule:admin_or_owner",
    "os_compute_api:servers:trigger_crash_dump": "rule:admin_or_owner",
    "os_compute_api:servers:migrations:force_complete": "rule:admin_api",
    "os_compute_api:servers:migrations:delete": "rule:admin_api",
    "os_compute_api:servers:discoverable": "@",
    "os_compute_api:servers:migrations:index": "rule:admin_api",
    "os_compute_api:servers:migrations:show": "rule:admin_api",
    "os_compute_api:os-access-ips:discoverable": "@",
    "os_compute_api:os-access-ips": "rule:admin_or_owner",
    "os_compute_api:os-admin-actions": "rule:admin_api",
    "os_compute_api:os-admin-actions:discoverable": "@",
    "os_compute_api:os-admin-actions:reset_network": "rule:admin_api",
    "os_compute_api:os-admin-actions:inject_network_info": "rule:admin_api",
    "os_compute_api:os-admin-actions:reset_state": "rule:admin_api",
    "os_compute_api:os-admin-password": "rule:admin_or_owner",
    "os_compute_api:os-admin-password:discoverable": "@",
    "os_compute_api:os-aggregates:discoverable": "@",
    "os_compute_api:os-aggregates:index": "rule:admin_api",
    "os_compute_api:os-aggregates:create": "rule:admin_api",
    "os_compute_api:os-aggregates:show": "rule:admin_api",
    "os_compute_api:os-aggregates:update": "rule:admin_api",
    "os_compute_api:os-aggregates:delete": "rule:admin_api",
    "os_compute_api:os-aggregates:add_host": "rule:admin_api",
    "os_compute_api:os-aggregates:remove_host": "rule:admin_api",
    "os_compute_api:os-aggregates:set_metadata": "rule:admin_api",
    "os_compute_api:os-agents": "rule:admin_api",
    "os_compute_api:os-agents:discoverable": "@",
    "os_compute_api:os-attach-interfaces": "rule:admin_or_owner",
    "os_compute_api:os-attach-interfaces:discoverable": "@",
    "os_compute_api:os-baremetal-nodes": "rule:admin_api",
    "os_compute_api:os-baremetal-nodes:discoverable": "@",
    "os_compute_api:os-block-device-mapping-v1:discoverable": "@",
    "os_compute_api:os-cells": "rule:admin_api",
    "os_compute_api:os-cells:create": "rule:admin_api",
    "os_compute_api:os-cells:delete": "rule:admin_api",
    "os_compute_api:os-cells:update": "rule:admin_api",
    "os_compute_api:os-cells:sync_instances": "rule:admin_api",
    "os_compute_api:os-cells:discoverable": "@",
    "os_compute_api:os-certificates:create": "rule:admin_or_owner",
    "os_compute_api:os-certificates:show": "rule:admin_or_owner",
    "os_compute_api:os-certificates:discoverable": "@",
    "os_compute_api:os-cloudpipe": "rule:admin_api",
    "os_compute_api:os-cloudpipe:discoverable": "@",
    "os_compute_api:os-config-drive": "rule:admin_or_owner",
    "os_compute_api:os-consoles:discoverable": "@",
    "os_compute_api:os-consoles:create": "rule:admin_or_owner",
    "os_compute_api:os-consoles:delete": "rule:admin_or_owner",
    "os_compute_api:os-consoles:index": "rule:admin_or_owner",
    "os_compute_api:os-consoles:show": "rule:admin_or_owner",
    "os_compute_api:os-console-output:discoverable": "@",
    "os_compute_api:os-console-output": "rule:admin_or_owner",
    "os_compute_api:os-remote-consoles": "rule:admin_or_owner",
    "os_compute_api:os-remote-consoles:discoverable": "@",
    "os_compute_api:os-create-backup:discoverable": "@",
    "os_compute_api:os-create-backup": "rule:admin_or_owner",
    "os_compute_api:os-deferred-delete": "rule:admin_or_owner",
    "os_compute_api:os-deferred-delete:discoverable": "@",
    "os_compute_api:os-disk-config": "rule:admin_or_owner",
    "os_compute_api:os-disk-config:discoverable": "@",
    "os_compute_api:os-evacuate": "rule:admin_api",
    "os_compute_api:os-evacuate:discoverable": "@",
    "os_compute_api:os-extended-server-attributes": "rule:admin_api",
    "os_compute_api:os-extended-server-attributes:discoverable": "@",
    "os_compute_api:os-extended-status": "rule:admin_or_owner",
    "os_compute_api:os-extended-status:discoverable": "@",
    "os_compute_api:os-extended-availability-zone": "rule:admin_or_owner",
    "os_compute_api:os-extended-availability-zone:discoverable": "@",
    "os_compute_api:extensions": "rule:admin_or_owner",
    "os_compute_api:extensions:discoverable": "@",
    "os_compute_api:extension_info:discoverable": "@",
    "os_compute_api:os-extended-volumes": "rule:admin_or_owner",
    "os_compute_api:os-extended-volumes:discoverable": "@",
    "os_compute_api:os-fixed-ips": "rule:admin_api",
    "os_compute_api:os-fixed-ips:discoverable": "@",
    "os_compute_api:os-flavor-access": "rule:admin_or_owner",
    "os_compute_api:os-flavor-access:discoverable": "@",
    "os_compute_api:os-flavor-access:remove_tenant_access": "rule:admin_api",
    "os_compute_api:os-flavor-access:add_tenant_access": "rule:admin_api",
    "os_compute_api:os-flavor-rxtx": "rule:admin_or_owner",
    "os_compute_api:os-flavor-rxtx:discoverable": "@",
    "os_compute_api:flavors": "rule:admin_or_owner",
    "os_compute_api:flavors:discoverable": "@",
    "os_compute_api:os-flavor-extra-specs:discoverable": "@",
    "os_compute_api:os-flavor-extra-specs:index": "rule:admin_or_owner",
    "os_compute_api:os-flavor-extra-specs:show": "rule:admin_or_owner",
    "os_compute_api:os-flavor-extra-specs:create": "rule:admin_api",
    "os_compute_api:os-flavor-extra-specs:update": "rule:admin_api",
    "os_compute_api:os-flavor-extra-specs:delete": "rule:admin_api",
    "os_compute_api:os-flavor-manage:discoverable": "@",
    "os_compute_api:os-flavor-manage": "rule:admin_api",
    "os_compute_api:os-floating-ip-dns": "rule:admin_or_owner",
    "os_compute_api:os-floating-ip-dns:discoverable": "@",
    "os_compute_api:os-floating-ip-dns:domain:update": "rule:admin_api",
    "os_compute_api:os-floating-ip-dns:domain:delete": "rule:admin_api",
    "os_compute_api:os-floating-ip-pools": "rule:admin_or_owner",
    "os_compute_api:os-floating-ip-pools:discoverable": "@",
    "os_compute_api:os-floating-ips": "rule:admin_or_owner",
    "os_compute_api:os-floating-ips:discoverable": "@",
    "os_compute_api:os-floating-ips-bulk": "rule:admin_api",
    "os_compute_api:os-floating-ips-bulk:discoverable": "@",
    "os_compute_api:os-fping": "rule:admin_or_owner",
    "os_compute_api:os-fping:discoverable": "@",
    "os_compute_api:os-fping:all_tenants": "rule:admin_api",
    "os_compute_api:os-hide-server-addresses": "is_admin:False",
    "os_compute_api:os-hide-server-addresses:discoverable": "@",
    "os_compute_api:os-hosts": "rule:admin_api",
    "os_compute_api:os-hosts:discoverable": "@",
    "os_compute_api:os-hypervisors": "rule:admin_api",
    "os_compute_api:os-hypervisors:discoverable": "@",
    "os_compute_api:images:discoverable": "@",
    "os_compute_api:image-size": "rule:admin_or_owner",
    "os_compute_api:image-size:discoverable": "@",
    "os_compute_api:os-instance-actions": "rule:admin_or_owner",
    "os_compute_api:os-instance-actions:discoverable": "@",
    "os_compute_api:os-instance-actions:events": "rule:admin_api",
    "os_compute_api:os-instance-usage-audit-log": "rule:admin_api",
    "os_compute_api:os-instance-usage-audit-log:discoverable": "@",
    "os_compute_api:ips:discoverable": "@",
    "os_compute_api:ips:index": "rule:admin_or_owner",
    "os_compute_api:ips:show": "rule:admin_or_owner",
    "os_compute_api:os-keypairs:discoverable": "@",
    "os_compute_api:os-keypairs": "rule:admin_or_owner",
    "os_compute_api:os-keypairs:index": "rule:admin_api or user_id:%(user_id)s",
    "os_compute_api:os-keypairs:show": "rule:admin_api or user_id:%(user_id)s",
    "os_compute_api:os-keypairs:create": "rule:admin_api or user_id:%(user_id)s",
    "os_compute_api:os-keypairs:delete": "rule:admin_api or user_id:%(user_id)s",
    "os_compute_api:limits:discoverable": "@",
    "os_compute_api:limits": "rule:admin_or_owner",
    "os_compute_api:os-lock-server:discoverable": "@",
    "os_compute_api:os-lock-server:lock": "rule:admin_or_owner",
    "os_compute_api:os-lock-server:unlock": "rule:admin_or_owner",
    "os_compute_api:os-lock-server:unlock:unlock_override": "rule:admin_api",
    "os_compute_api:os-migrate-server:discoverable": "@",
    "os_compute_api:os-migrate-server:migrate": "rule:admin_api",
    "os_compute_api:os-migrate-server:migrate_live": "rule:admin_api",
    "os_compute_api:os-multinic": "rule:admin_or_owner",
    "os_compute_api:os-multinic:discoverable": "@",
    "os_compute_api:os-networks": "rule:admin_api",
    "os_compute_api:os-networks:view": "rule:admin_or_owner",
    "os_compute_api:os-networks:discoverable": "@",
    "os_compute_api:os-networks-associate": "rule:admin_api",
    "os_compute_api:os-networks-associate:discoverable": "@",
    "os_compute_api:os-pause-server:discoverable": "@",
    "os_compute_api:os-pause-server:pause": "rule:admin_or_owner",
    "os_compute_api:os-pause-server:unpause": "rule:admin_or_owner",
    "os_compute_api:os-pci:pci_servers": "rule:admin_or_owner",
    "os_compute_api:os-pci:discoverable": "@",
    "os_compute_api:os-pci:index": "rule:admin_api",
    "os_compute_api:os-pci:detail": "rule:admin_api",
    "os_compute_api:os-pci:show": "rule:admin_api",
    "os_compute_api:os-personality:discoverable": "@",
    "os_compute_api:os-preserve-ephemeral-rebuild:discoverable": "@",
    "os_compute_api:os-quota-sets:discoverable": "@",
    "os_compute_api:os-quota-sets:show": "rule:admin_or_owner",
    "os_compute_api:os-quota-sets:defaults": "@",
    "os_compute_api:os-quota-sets:update": "rule:admin_api",
    "os_compute_api:os-quota-sets:delete": "rule:admin_api",
    "os_compute_api:os-quota-sets:detail": "rule:admin_api",
    "os_compute_api:os-quota-class-sets:update": "rule:admin_api",
    "os_compute_api:os-quota-class-sets:show": "is_admin:True or quota_class:%(quota_class)s",
    "os_compute_api:os-quota-class-sets:discoverable": "@",
    "os_compute_api:os-rescue": "rule:admin_or_owner",
    "os_compute_api:os-rescue:discoverable": "@",
    "os_compute_api:os-scheduler-hints:discoverable": "@",
    "os_compute_api:os-security-group-default-rules:discoverable": "@",
    "os_compute_api:os-security-group-default-rules": "rule:admin_api",
    "os_compute_api:os-security-groups": "rule:admin_or_owner",
    "os_compute_api:os-security-groups:discoverable": "@",
    "os_compute_api:os-server-diagnostics": "rule:admin_api",
    "os_compute_api:os-server-diagnostics:discoverable": "@",
    "os_compute_api:os-server-password": "rule:admin_or_owner",
    "os_compute_api:os-server-password:discoverable": "@",
    "os_compute_api:os-server-usage": "rule:admin_or_owner",
    "os_compute_api:os-server-usage:discoverable": "@",
    "os_compute_api:os-server-groups": "rule:admin_or_owner",
    "os_compute_api:os-server-groups:discoverable": "@",
    "os_compute_api:os-services": "rule:admin_api",
    "os_compute_api:os-services:discoverable": "@",
    "os_compute_api:server-metadata:discoverable": "@",
    "os_compute_api:server-metadata:index": "rule:admin_or_owner",
    "os_compute_api:server-metadata:show": "rule:admin_or_owner",
    "os_compute_api:server-metadata:delete": "rule:admin_or_owner",
    "os_compute_api:server-metadata:create": "rule:admin_or_owner",
    "os_compute_api:server-metadata:update": "rule:admin_or_owner",
    "os_compute_api:server-metadata:update_all": "rule:admin_or_owner",
    "os_compute_api:os-shelve:shelve": "rule:admin_or_owner",
    "os_compute_api:os-shelve:shelve:discoverable": "@",
    "os_compute_api:os-shelve:shelve_offload": "rule:admin_api",
    "os_compute_api:os-simple-tenant-usage:discoverable": "@",
    "os_compute_api:os-simple-tenant-usage:show": "rule:admin_or_owner",
    "os_compute_api:os-simple-tenant-usage:list": "rule:admin_api",
    "os_compute_api:os-suspend-server:discoverable": "@",
    "os_compute_api:os-suspend-server:suspend": "rule:admin_or_owner",
    "os_compute_api:os-suspend-server:resume": "rule:admin_or_owner",
    "os_compute_api:os-tenant-networks": "rule:admin_or_owner",
    "os_compute_api:os-tenant-networks:discoverable": "@",
    "os_compute_api:os-shelve:unshelve": "rule:admin_or_owner",
    "os_compute_api:os-user-data:discoverable": "@",
    "os_compute_api:os-virtual-interfaces": "rule:admin_or_owner",
    "os_compute_api:os-virtual-interfaces:discoverable": "@",
    "os_compute_api:os-volumes": "rule:admin_or_owner",
    "os_compute_api:os-volumes:discoverable": "@",
    "os_compute_api:os-volumes-attachments:index": "rule:admin_or_owner",
    "os_compute_api:os-volumes-attachments:show": "rule:admin_or_owner",
    "os_compute_api:os-volumes-attachments:create": "rule:admin_or_owner",
    "os_compute_api:os-volumes-attachments:update": "rule:admin_or_owner",
    "os_compute_api:os-volumes-attachments:delete": "rule:admin_or_owner",
    "os_compute_api:os-volumes-attachments:discoverable": "@",
    "os_compute_api:os-availability-zone:list": "rule:admin_or_owner",
    "os_compute_api:os-availability-zone:discoverable": "@",
    "os_compute_api:os-availability-zone:detail": "rule:admin_api",
    "os_compute_api:os-used-limits": "rule:admin_api",
    "os_compute_api:os-used-limits:discoverable": "@",
    "os_compute_api:os-migrations:index": "rule:admin_api",
    "os_compute_api:os-migrations:discoverable": "@",
    "os_compute_api:os-assisted-volume-snapshots:create": "rule:admin_api",
    "os_compute_api:os-assisted-volume-snapshots:delete": "rule:admin_api",
    "os_compute_api:os-assisted-volume-snapshots:discoverable": "@",
    "os_compute_api:os-console-auth-tokens": "rule:admin_api",
    "os_compute_api:os-server-external-events:create": "rule:admin_api"
}
