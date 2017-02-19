FROM ubuntu:16.04

ARG PACKETBEAT=packetbeat-5.2.1-amd64.deb

RUN apt-get update && \
    apt-get install -y libpcap0.8 curl && \
    rm -rf /var/lib/apt/lists/* && \
    curl -L -O https://artifacts.elastic.co/downloads/beats/packetbeat/$PACKETBEAT && \
    dpkg -i ${PACKETBEAT} && \
    rm -f $PACKETBEAT

COPY config /etc/packetbeat

CMD /usr/share/packetbeat/bin/packetbeat -path.config /etc/packetbeat -c packetbeat.yml
