# Gitea

```
docker run \
--detach \
--name=gitea \
--env DB_TYPE=mysql \
--env DB_HOST=mysql:3306 \
--env DB_NAME=gitea \
--env DB_USER=gitea \
--env DB_PASSWD=gitea \
--link mysql \
--publish 3000:3000 \
--publish 222:22 \
--restart=always \
--volume /etc/timezone:/etc/timezone:ro \
--volume /etc/localtime:/etc/localtime:ro \
--volume /usr/share/docker/gitea/data:/data \
gitea/gitea:1.13.0
```
