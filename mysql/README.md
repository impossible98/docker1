# MySQL

## Docker

```
docker run \
--detach \
--env MYSQL_ROOT_PASSWORD=password \
--name mysql \
--restart=always \
--volume /usr/share/docker/mysql:/var/lib/mysql \
mysql:5.7
docker network create database
docker network connect database mysql
```

```
docker exec -it mysql /bin/bash
```

```
CREATE USER "test"@"%" IDENTIFIED BY "1234";
create database test;
grant all privileges on test.* to "test"@"%" identified by "1234";
flush privileges;
```
