# Aria2

```
docker run \
--detach \
--log-opt max-size=1m \
--name aria2-pro \
--env PUID=$UID \
--env PGID=$GID \
--env RPC_SECRET=password \
--env RPC_PORT=6800 \
--publish 6800:6800 \
--publish 6888:6888 \
--publish 6888:6888/udp \
--restart unless-stopped \
--volume /share/Docker/aria2-pro/config:/config \
--volume /share/Nas/downloads/temp:/downloads \
p3terx/aria2-pro
```
