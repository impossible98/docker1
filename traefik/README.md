# traefik

## Docker

```
docker run \
-d \
--name traefik \
-p 80:80 \
-p 8080:8080 \
-v /var/run/docker.sock:/var/run/docker.sock \
traefik:v2.3 \
--api.insecure=true \
--providers.docker=true \
--providers.docker.exposedbydefault=false \
--entrypoints.http.address=:80 \
--entrypoints.https.address=:443
```
