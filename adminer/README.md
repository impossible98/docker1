# Adminer

```
docker pull adminer:4
docker run \
--detach \
--link mysql:mysql \
--name adminer \
--publish 8080:8080 \
--restart=always \
adminer:4
```