# Portainer CE

## Docker

```
docker run \
--detach \
--name=portainer-ce \
--publish 9000:9000 \
--restart=always \
--volume /var/run/docker.sock:/var/run/docker.sock \
--volume /usr/share/docker/portainer/data:/data \
portainer/portainer-ce:2.0.0
```
