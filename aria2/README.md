# Aria2

```
docker pull p3terx/aria2-pro
docker run -d \
--log-opt max-size=1m \
--name aria2-pro \
--env PUID=$UID \
--env PGID=$GID \
--env UMASK_SET=022 \
--env RPC_SECRET=password \
--env RPC_PORT=6800 \
--env LISTEN_PORT=6888 \
--publish 6800:6800 \
--publish 6888:6888 \
--publish 6888:6888/udp \
--restart unless-stopped \
--volume /share/Docker/aria2-pro/config:/config \
--volume /share/Nas/downloads:/downloads \
p3terx/aria2-pro
```
