
/var/lib/ceph/mds/ceph-mds.{{ pillar['short_id'] }}/ceph.keyring:
  file.managed:
    - source:
      - salt://ceph/mds/files/keyring.j2
    - template: jinja
    - user: salt
    - group: salt
    - mode: 600
    - makedirs: True
    - context:
      mds: {{ pillar['short_id'] }}
    - fire_event: True


