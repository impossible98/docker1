# Nextcloud

```
docker run \
--detach \
--link mysql:localhost \
--name=nextcloud \
--publish 10080:80 \
nextcloud:20
```
