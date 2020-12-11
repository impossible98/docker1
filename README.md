
## sickrage

```
docker run \
-d --name=sickrage \
-v /usr/share/docker/sickrage/config:/config \
-v /usr/share/docker/sickrage/downloads:/downloads \
-v /usr/share/docker/sickrage/tv:/tv \
-v /usr/share/docker/sickrage/anime:/anime \
-e TZ=UTC \
-p 8081:8081 \
sickrage/sickrage
```
