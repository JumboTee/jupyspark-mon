# jupyspark-mon

### How to run
docker run -d --name JupyterHub -p 222:22 -p 80:8000 -p 9091:9091 -v /home/ds/:/home/ amiryus/jupyspark-mon

###After running container start DATA COLLECTOR for SPARK
# /pushgateway-0.8.0.linux-amd64/pushgateway
# while sleep 1; do ./better-top-cpu.sh; done;
# while sleep 1; do ./better-top-memory.sh; done;
