# Portainer

```
docker run \
--detach \
--name=portainer \
--publish 9000:9000 \
--restart=always \
--volume /var/run/docker.sock:/var/run/docker.sock \
--volume /share/Nas/docker/portainer/data:/data \
portainer/portainer:1.24.1-alpine
```
