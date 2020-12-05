# Adminer

## Docker

```
docker network create adminer
docker run \
--detach \
--name=adminer \
--publish 8080:8080 \
--restart=always \
adminer:4.7
docker network connect adminer adminer
```
