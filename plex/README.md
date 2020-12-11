
## Docker

···
Docker_Path=/mnt/user/Nas/docker
Media_Path=/mnt/user/Nas
Time_Zone=Asia/Shanghai
docker run \
--detach \
--device=/dev/dri:/dev/dri \
--env TZ=${Time_Zone} \
--env PLEX_CLAIM=claim-rFmBB5G-y61JXxBaD4TM \
--env PUID=1000 \
--env PGID=1000 \
--env UMASK_SET=022 \
--name plex \
-p 32400:32400/tcp \
-p 3005:3005/tcp \
-p 8324:8324/tcp \
-p 32469:32469/tcp \
-p 1900:1900/udp \
-p 32410:32410/udp \
-p 32412:32412/udp \
-p 32413:32413/udp \
-p 32414:32414/udp \
--restart unless-stopped \
-v ${Docker_Path}/plex/config:/config \
-v ${Docker_Path}/plex/transcode:/transcode \
-v ${Media_Path}:/data \
plexinc/pms-docker
···
