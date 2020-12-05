# Jellyfin

```
docker run \
--detach \
--device /dev/dri/card0:/dev/dri/card0 \
--device /dev/dri/renderD128:/dev/dri/renderD128 \
--name=jellyfin \
--publish 8096:8096 \
--volume /usr/share/docker/jellyfin/cache:/cache \
--volume /usr/share/docker/jellyfin/config:/config \
--volume /share/Nas:/media \
jellyfin/jellyfin:10.6.4
```
