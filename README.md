## Dockerfile for Elastic Packetbeat

Simple dockerfile for Elastic Packetbeat.  
You can configure it by modifying config directory.

## Run

### docker run

```sh
docker run --net host -v "$(pwd)/config:/etc/packetbeat" -it uphy/packetbeat
```

### docker-compose

```sh
git clone https://github.com/uphy/packetbeat-docker
cd packetbeat-docker
docker-compose up
```
