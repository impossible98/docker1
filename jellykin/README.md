# Jellyfin

```
docker run \
--detach \
--name=jellyfin \
--publish 8096:8096 \
--volume /usr/share/docker/jellyfin/cache:/cache \
--volume /usr/share/docker/jellyfin/config:/config \
--volume /usr/share/Nas:/media \
jellyfin/jellyfin
```

## Docker Compose

```
docker-compose --project-name jellyfin up --detach
```

