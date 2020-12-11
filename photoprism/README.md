# PhotoPrism

```
docker run \
--detach \
--name photoprism \
--security-opt seccomp=unconfined \
--security-opt apparmor=unconfined \
--name=photoprism \
--publish 2342:2342 \
--env PHOTOPRISM_ADMIN_PASSWORD=password \
--volume /usr/share/docker/photoprism/storage:/photoprism/storage \
--volume /share/Nas/Photos:/photoprism/originals \
photoprism/photoprism
```
