# Jellyfin

```
docker run \
--detach \
--device /dev/dri/renderD128:/dev/dri/renderD128 \
--device /dev/dri/card0:/dev/dri/card0 \
--name=jellyfin \
--publish 8096:8096 \
--volume /mnt/user/Nas/docker/jellyfin/cache:/cache \
--volume /mnt/user/Nas/docker/jellyfin/config:/config \
--volume /mnt/user/Nas:/media \
jellyfin/jellyfin
```

## Docker Compose

```
docker-compose --project-name jellyfin up --detach
```


```
docker run \
--detach \
--device /dev/dri/renderD128:/dev/dri/renderD128 \
--device /dev/dri/card0:/dev/dri/card0 \
--name=jellyfin \
--publish 8096:8096 \
--volume /mnt/user/Nas/docker/jellyfin/cache:/cache \
--volume /mnt/user/Nas/docker/jellyfin/config:/config \
--volume /mnt/user/Nas:/media \
jellyfin/jellyfin
```
