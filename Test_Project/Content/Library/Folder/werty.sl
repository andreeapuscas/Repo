namespace: Folder
flow:
  name: werty
  workflow:
    - ssh_flow:
        do:
          io.cloudslang.base.ssh.ssh_flow:
            - host: "${get_sp('hostname')}"
            - command: '4516'
            - username: '54'
        navigate:
          - FAILURE: FAILURE
          - SUCCESS: ssh_command
    - ssh_command:
        do:
          io.cloudslang.base.ssh.ssh_command:
            - host: "${get_sp('HostName1')}"
            - command: "${get_sp('HostName1')}"
            - username: '${command}'
        navigate:
          - FAILURE: CUSTOM
          - SUCCESS: SUCCESS
  results:
    - FAILURE
    - SUCCESS
    - CUSTOM
extensions:
  graph:
    steps:
      ssh_flow:
        x: 100
        y: 250
        navigate:
          d7baade5-03f4-bdfc-7382-e52bc96e8e96:
            targetId: 1b92f09c-e2d6-642c-1019-6b4c2809e445
            port: FAILURE
      ssh_command:
        x: 400
        y: 375
        navigate:
          c9b6afe8-8c33-618a-9256-39827415057a:
            targetId: a49b3b53-e42f-2cf1-5602-c5a5ce32af79
            port: FAILURE
          71d0d09e-6e26-221b-8044-711a5dac5ae4:
            targetId: 03a65ab2-e299-029c-2868-67f5e0cad495
            port: SUCCESS
    results:
      FAILURE:
        1b92f09c-e2d6-642c-1019-6b4c2809e445:
          x: 400
          y: 125
      CUSTOM:
        a49b3b53-e42f-2cf1-5602-c5a5ce32af79:
          x: 700
          y: 125
      SUCCESS:
        03a65ab2-e299-029c-2868-67f5e0cad495:
          x: 700
          y: 375
