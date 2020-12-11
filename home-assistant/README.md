# Home Assistant

## Docker

```
docker run \
--detach \
--net
--name=home-assistant \
-p 8123:8123 \
-v /mnt/user/Nas/docker/home-assistant/config:/config \
homeassistant/home-assistant
```

## Docker Compose

```
docker-compose --project-name home-assistant up --detach
```

```
tee /etc/docker/daemon.json <<-EOF
{
    "registry-mirrors": ["https://docker.mirrors.ustc.edu.cn"]
}
EOF
```
