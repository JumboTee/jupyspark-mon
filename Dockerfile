FROM amiryus/jupyspark:latest

RUN wget https://github.com/prometheus/pushgateway/releases/download/v0.8.0/pushgateway-0.8.0.linux-amd64.tar.gz
RUN tar xvzf pushgateway-0.8.0.linux-amd64.tar.gz 

COPY ./better-top-cpu.sh ./
COPY ./better-top-memory.sh ./
