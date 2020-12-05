# FreshRSS

## Docker

```
docker run \
--detach \
--restart unless-stopped \
--log-opt max-size=1m \
-p 80:80 \
--volume /usr/share/docker/freshrss/data:/var/www/FreshRSS/data \
--volume /usr/share/docker/freshrss/extensions:/var/www/FreshRSS/extensions \
--env 'CRON_MIN=4,34' \
--name freshrss \
freshrss/freshrss
docker network connect database freshrss
```
