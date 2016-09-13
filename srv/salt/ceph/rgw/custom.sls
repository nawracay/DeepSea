{% set rgw_name = salt['pillar.get']('rgw_service_name', 'rgw')  %}
install rgw:
  cmd.run:
    - name: "zypper --non-interactive --no-gpg-checks in ceph-radosgw"

start rgw:
  service.running:
    - name: ceph-radosgw@{{ rgw_name }}.{{ pillar['short_id'] }}
    - enable: True
    - require:
        - cmd: install rgw
