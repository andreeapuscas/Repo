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
    - CUSTOM
    - SUCCESS
extensions:
  graph:
    steps:
      sleep:
        x: 302
        y: 61
    results:
      CUSTOM:
        b82700a2-db6d-2e4d-f09d-6581032eba73:
          x: 108.60000610351562
          y: 80.60000610351562
      SUCCESS:
        b763813a-9dbc-afdc-f99b-833a11d178c2:
          x: 563.5999755859375
          y: 90.60000610351562
