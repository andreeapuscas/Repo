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
extensions:
  graph:
    steps:
      sleep:
        x: 302
        y: 61
