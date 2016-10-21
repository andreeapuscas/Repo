namespace: Folder
flow:
  name: werty
  workflow:
    - ssh_flow:
        do:
          io.cloudslang.base.ssh.ssh_flow: []
        navigate:
          - FAILURE: FAILURE
          - SUCCESS: ssh_command
    - ssh_command:
        do:
          io.cloudslang.base.ssh.ssh_command: []
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
        x: 241
        y: 295
        navigate:
          77885e4c-909d-7367-d35f-4eec4b34c61d:
            targetId: 02b21e9e-c05b-8c84-832a-a2e909feca33
            port: FAILURE
      ssh_command:
        x: 496
        y: 283
        navigate:
          f6c93e34-d11e-179f-a206-c18ad3d6cff8:
            targetId: c021add3-3f14-46a3-acdc-81e20114cdbb
            port: SUCCESS
          6b630daf-47ba-8cf4-26cc-e9e63740eb56:
            targetId: 05ca75c1-29b9-ff5b-edd4-462928c79d25
            port: FAILURE
    results:
      SUCCESS:
        c021add3-3f14-46a3-acdc-81e20114cdbb:
          x: 835
          y: 193
      CUSTOM:
        05ca75c1-29b9-ff5b-edd4-462928c79d25:
          x: 557
          y: 462
      FAILURE:
        02b21e9e-c05b-8c84-832a-a2e909feca33:
          x: 360
          y: 520
