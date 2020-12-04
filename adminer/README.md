# Adminer

```
docker run \
--detach \
--link mysql:mysql \
--name adminer \
--publish 8080:8080 \
--restart=always \
adminer:4.7
```

```
docker pull adminer:4.7
docker pull mysql:5.7
docker pull postgres:12-alpine
docker-compose up --detach
```
