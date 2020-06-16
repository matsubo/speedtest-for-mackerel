# Speedtest for mackerel-agent

## Requirements

- OOKLA's speedtest cli tool
  - https://www.speedtest.net/apps/cli

## Setup

- Finish agreement by executing `speedtest` command. This is asked only first time.
- Add setting on mackerel-agent.conf

```
[plugin.metrics.speedtest]
command = "sudo -u foo /path/to/speedtest-for-mackerel/test.rb"
check_interval = 15
```

## Execute

```
% ./test.rb
bandwidth.download 1138634 1592270251
bandwidth.upload   4814044 1592270251
```

## Screenshot


