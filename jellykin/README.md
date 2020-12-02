# Jellyfin

```
docker pull jellyfin/jellyfin
docker run \
--detach \
--name=jellyfin \
--publish 8096:8096 \
--publish 8920:8920 \
--volume /share/Nas/docker/jellyfin/cache:/cache \
--volume /share/Nas/docker/jellyfin/config:/config \
--volume /share/Nas/downloads:/media \
jellyfin/jellyfin
```
