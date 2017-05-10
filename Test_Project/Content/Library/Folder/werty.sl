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
          03b11df3-4de3-d79f-9202-b07515e16493:
            targetId: aaca8509-6949-6818-a463-ee328e6b6ba2
            port: FAILURE
      ssh_command:
        x: 400
        y: 375
        navigate:
          c1a00972-5ed1-0d3e-f2ad-f564142ddcb1:
            targetId: cb794bbf-1384-b74f-a0a3-a8bb306c91ce
            port: FAILURE
          6c317ae6-410f-6348-3961-da1bdf7270b2:
            targetId: d27d24df-ae67-92c3-d319-2ea7743dc544
            port: SUCCESS
    results:
      FAILURE:
        aaca8509-6949-6818-a463-ee328e6b6ba2:
          x: 400
          y: 125
      CUSTOM:
        cb794bbf-1384-b74f-a0a3-a8bb306c91ce:
          x: 700
          y: 125
      SUCCESS:
        d27d24df-ae67-92c3-d319-2ea7743dc544:
          x: 700
          y: 375
