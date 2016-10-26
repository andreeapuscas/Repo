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
    results:
      FAILURE:
        a41c369e-c145-597f-60b1-d05d4d7cfca6:
          x: 116
          y: 113
        a8ad86c4-0be1-4eb9-2ade-bcc0cf867700:
          x: 246
          y: 171
