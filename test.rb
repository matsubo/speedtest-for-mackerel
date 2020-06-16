#!/bin/env ruby

require 'json'

# command
# % speedtest --server-id=15047 -f json --progress=no
#
# output
# {"type":"result","timestamp":"2020-06-16T01:07:49Z","ping":{"jitter":120.10299999999999,"latency":27.356000000000002},"download":{"bandwidth":878001,"bytes":10077578,"elapsed":13815},"upload":{"bandwidth":4004130,"bytes":35680876,"elapsed":9131},"packetLoss":0,"isp":"So-net","interface":{"internalIp":"192.168.1.18","name":"wlx0013eff32167","macAddr":"00:13:EF:F3:21:67","isVpn":false,"externalIp":"223.132.34.53"},"server":{"id":15047,"name":"OPEN Project (via 20G SINET)","location":"Tokyo","country":"Japan","host":"speed.open.ad.jp","port":8080,"ip":"202.222.12.78"},"result":{"id":"3aca24d3-cde5-44cb-95e8-6c94bed68b93","url":"https://www.speedtest.net/result/c/3aca24d3-cde5-44cb-95e8-6c94bed68b93"}}

output=`speedtest --server-id=15047 -f json --progress=no`

json = JSON.parse(output)

time = Time.now.to_i
puts sprintf("custom.speed.bandwidth.download\t%d\t%d", json["download"]["bandwidth"], time)
puts sprintf("custom.speed.bandwidth.upload\t%d\t%d", json["upload"]["bandwidth"], time)

