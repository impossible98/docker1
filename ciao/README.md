# ciao

```
docker run \
--detach \
--name ciao \
--publish 8090:3000 \
--volume /usr/share/docker/ciao:/app/db/sqlite \
brotandgames/ciao
```
