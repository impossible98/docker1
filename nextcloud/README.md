# Nextcloud

```
docker run \
--detach \
--env MYSQL_DATABASE=nextcloud \
--env MYSQL_USER=root \
--env MYSQL_PASSWORD=password \
--env MYSQL_HOST=mysql \
--name=nextcloud \
--publish 8280:80 \
nextcloud:20
docker network create database
docker network connect database nextcloud
```
