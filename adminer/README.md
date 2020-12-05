# Adminer

## Docker

```
docker run \
--detach \
--name adminer \
--publish 8080:8080 \
adminer:4.7
docker network create database
docker network connect database adminer
```
