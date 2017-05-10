namespace: a
flow:
  name: asd
  workflow:
    - werty:
        do:
          Folder.werty: []
        navigate:
          - FAILURE: FAILURE
          - SUCCESS: Vasile_Flow
    - Maria_Flow:
        do:
          Maria_folder.Maria_Flow: []
        navigate:
          - FAILURE: FAILURE
          - SUCCESS: SUCCESS
    - Vasile_Flow:
        do:
          Folder_Vasile.Vasile_Flow: []
        navigate:
          - SUCCESS: Maria_Flow
          - FAILURE_dfsf: FAILURE
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      werty:
        x: 100
        y: 250
        navigate:
          33820975-fcff-897e-54a7-6a6808c659cf:
            targetId: 265fa8c5-2649-4aa6-6008-0d81fa99a311
            port: FAILURE
      Vasile_Flow:
        x: 400
        y: 250
        navigate:
          196bc878-b365-b3ad-e042-b929c88943ae:
            targetId: 265fa8c5-2649-4aa6-6008-0d81fa99a311
            port: FAILURE_dfsf
      Maria_Flow:
        x: 700
        y: 125
        navigate:
          07c14a3b-bd00-38e4-9726-9ebc1fdd7672:
            targetId: 265fa8c5-2649-4aa6-6008-0d81fa99a311
            port: FAILURE
          4cdf7da1-cae3-2067-6bc5-83db0aba0db8:
            targetId: 0b2be89a-a7e2-a7dc-2209-30fc8d0ade1f
            port: SUCCESS
    results:
      FAILURE:
        265fa8c5-2649-4aa6-6008-0d81fa99a311:
          x: 700
          y: 375
      SUCCESS:
        0b2be89a-a7e2-a7dc-2209-30fc8d0ade1f:
          x: 1000
          y: 250
