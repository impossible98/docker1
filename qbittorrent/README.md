## Docker

```
Docker_Path=/mnt/user/Nas/docker
Time_Zone=Asia/Shanghai
Media_Path=/mnt/user/Nas

docker run -d \
--name=qbittorrent \
--env TZ=${Time_Zone} \
-e PUID=1000 \
-e PGID=1000 \
-e UMASK_SET=022 \
-e WEBUI_PORT=8080 \
-p 6881:6881 \
-p 6881:6881/udp \
-p 8080:8080 \
-v ${Docker_Path}/qbittorrent/config:/config \
-v ${Media_Path}/Downloads:/downloads \
--restart unless-stopped \
linuxserver/qbittorrent
```
