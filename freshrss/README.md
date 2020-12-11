# FreshRSS

## Docker

```
docker run \
--detach \
--restart unless-stopped \
--publish 8180:80 \
--volume /usr/share/docker/freshrss/data:/var/www/FreshRSS/data \
--volume /usr/share/docker/freshrss/extensions:/var/www/FreshRSS/extensions \
--env 'CRON_MIN=4,34' \
--name freshrss \
freshrss/freshrss
docker network create database
docker network connect database freshrss
```
