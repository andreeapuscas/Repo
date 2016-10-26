namespace: Maria_folder
flow:
  name: Maria_Flow
  workflow:
    - sleep:
        do:
          io.cloudslang.base.flow_control.sleep: []
        publish:
          - message: '${message}'
          - error_message: '${error_message}'
          - message: '${message}'
        navigate:
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      sleep:
        x: 302
        y: 61
    results:
      SUCCESS:
        f498c342-4a24-924b-3963-16653688fa69:
          x: 43
          y: 92
