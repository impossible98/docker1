# Nextcloud

```
docker run \
--detach \
--env MYSQL_DATABASE=nextcloud \
--env MYSQL_USER=root \
--env MYSQL_PASSWORD=password \
--env MYSQL_HOST=mysql \
--link mysql:mysql \
--name=nextcloud \
--publish 10080:80 \
nextcloud:20
```
