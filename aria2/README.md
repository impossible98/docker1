# Aria2

```
docker run \
--detach \
--env PUID=$UID \
--env PGID=$GID \
--env RPC_SECRET=password \
--env RPC_PORT=6800 \
--name aria2-pro \
--publish 6800:6800 \
--publish 6888:6888 \
--publish 6888:6888/udp \
--restart unless-stopped \
--volume /usr/share/docker/aria2-pro/config:/config \
--volume /share/Nas/downloads:/downloads \
p3terx/aria2-pro
```
