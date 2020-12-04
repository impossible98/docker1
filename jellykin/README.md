# Jellyfin

```
docker run \
--detach \
--device /dev/dri/card0:/dev/dri/card0 \
--device /dev/dri/renderD128:/dev/dri/renderD128 \
--name=jellyfin \
--publish 8096:8096 \
--publish 8920:8920 \
--volume /share/Nas/docker/jellyfin/cache:/cache \
--volume /share/Nas/docker/jellyfin/config:/config \
--volume /share/Nas/downloads:/media \
jellyfin/jellyfin:10.6.4
```
