

salt/ceph/stage/prep/{{ grains['id'] }}/complete:
  event.send:
    - data:
        status: "prep stage complete"


