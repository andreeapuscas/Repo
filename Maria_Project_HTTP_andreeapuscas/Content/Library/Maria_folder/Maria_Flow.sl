namespace: Maria_folder
flow:
  name: Maria_Flow
  workflow:
    - ssh_flow:
        do:
          io.cloudslang.base.ssh.ssh_flow:
            - host: "${get_sp('hostname')}"
            - command: '${host}'
            - username: "${get_sp('hostname')}"
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: FAILURE
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      ssh_flow:
        x: 194
        y: 235
        navigate:
          6b856003-6dab-3a22-dcde-3059a900707b:
            targetId: f498c342-4a24-924b-3963-16653688fa69
            port: SUCCESS
          22af5415-15ee-59aa-e783-2f504c79fe6e:
            targetId: 39f1e05b-b5e6-11c7-a70f-9a5f14fe2c6f
            port: FAILURE
    results:
      SUCCESS:
        f498c342-4a24-924b-3963-16653688fa69:
          x: 43
          y: 92
      FAILURE:
        39f1e05b-b5e6-11c7-a70f-9a5f14fe2c6f:
          x: 427
          y: 313
