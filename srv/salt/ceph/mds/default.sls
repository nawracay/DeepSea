
start mds:
  service.running:
    - name: ceph-mds@{{ pillar['short_id'] }}
    - enable: True
 

