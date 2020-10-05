# jupyspark-mon

# How to run
- docker run -d --shm-size 30g --name JupyterHub -p 222:22 -p 80:8000 -p 9091:9091 -v /home/ds/:/home/ amiryus/jupyspark-mon

# After running container start DATA COLLECTOR for SPARK
- /pushgateway-0.8.0.linux-amd64/pushgateway &
- nohup watch -n5 ./better-top-cpu.sh >/dev/null &
- nohup watch -n5 ./better-top-memory.sh >/dev/null &

