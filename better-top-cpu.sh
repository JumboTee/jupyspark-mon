#!/bin/bash
z=$(ps aux)
while read -r z
do
   var=$var$(awk '{print "cpu_usage{users=\""$1"\",process=\""$11"\", pid=\""$2"\"}", $3z}');
done <<< "$z"
curl -X POST -H  "Content-Type: text/plain" --data "$var
" http://localhost:9091/metrics/job/top/instance/machine