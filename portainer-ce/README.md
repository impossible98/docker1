# Portainer-ce

## Docker

```
docker run \
--detach \
--name=portainer-ce \
--publish 8000:8000 \
--publish 9000:9000 \
--restart=always \
--volume /share/Nas/docker/portainer-ce/data:/data \
--volume /var/run/docker.sock:/var/run/docker.sock \
portainer/portainer-ce:2.0.0-alpine
```
