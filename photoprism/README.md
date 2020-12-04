# PhotoPrism

```
docker run \
--detach \
--name photoprism \
--security-opt seccomp=unconfined \
--security-opt apparmor=unconfined \
--name=photoprism
--publish  2342:2342 \
--env PHOTOPRISM_ADMIN_PASSWORD=password \
--env PHOTOPRISM_UPLOAD_NSFW=true \
--volume /share/Nas/docker/photoprism:/photoprism/storage \
--volume /share/Nas/downloads/Photos:/photoprism/originals \
photoprism/photoprism
```
