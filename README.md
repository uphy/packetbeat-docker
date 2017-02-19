## Dockerfile for Elastic Packetbeat

Simple dockerfile for Elastic Packetbeat.  
You can configure it by modifying config directory.

## Run

### docker run

```sh
docker run --net host -it uphy/packetbeat
```

### Edit configs

```sh
git clone https://github.com/uphy/packetbeat-docker
cd packetbeat-docker
vi config/packetbeat.yml
docker-compose up
```