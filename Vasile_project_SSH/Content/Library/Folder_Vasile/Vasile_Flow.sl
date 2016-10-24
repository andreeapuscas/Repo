namespace: Folder_Vasile
flow:
  name: Vasile_Flow
  workflow:
    - string_equals:
        do:
          io.cloudslang.base.strings.string_equals: []
        navigate:
          - FAILURE: FAILURE_dfsf
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
    - FAILURE_dfsf
extensions:
  graph:
    steps:
      string_equals:
        x: 224.16998291015625
        y: 217.16998291015625
        navigate:
          3c948b91-6fdd-20f2-148e-a970d9e44133:
            targetId: a90269b0-fe38-9ba1-018e-7b51d27d350c
            port: FAILURE
          4389c27f-f451-31a7-518c-09ac81600fc6:
            targetId: fb0c08f4-05e2-4886-f21c-ba6b22216311
            port: SUCCESS
    results:
      SUCCESS:
        fb0c08f4-05e2-4886-f21c-ba6b22216311:
          x: 240.70001220703125
          y: 93.25997924804687
      FAILURE_dfsf:
        a90269b0-fe38-9ba1-018e-7b51d27d350c:
          x: 353.739990234375
          y: 229.1300048828125
