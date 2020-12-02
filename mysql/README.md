# MySQL


## Docker

```
docker run \
--detach \
--env MYSQL_ROOT_PASSWORD=password \
--name mysql \
--restart=always \
--volume /share/Nas/mysql/mysql:/var/lib/mysql \
mysql:5.7
```
