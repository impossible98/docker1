# FreshRSS

## Docker

```
docker run \
-d \
--restart unless-stopped \
--log-opt max-size=10m \
-p 80:80 \
-v /usr/share/docker/freshrss/data:/var/www/FreshRSS/data \
-v /usr/share/docker/freshrss/extensions:/var/www/FreshRSS/extensions \
-e 'CRON_MIN=4,34' \
--name freshrss \
freshrss/freshrss
docker network connect adminer freshrss
```

```
docker run \
-d \
--restart unless-stopped \
--log-opt max-size=10m \
-v traefik-letsencrypt:/etc/traefik/acme \
-v traefik-tmp:/tmp \
-v /var/run/docker.sock:/var/run/docker.sock:ro \
--net freshrss-network \
-p 80:80 \
-p 443:443 \
--name traefik traefik:1.7 --docker \
--loglevel=info \
--entryPoints='Name:http Address::80 Compress:true Redirect.EntryPoint:https' \
--entryPoints='Name:https Address::443 Compress:true TLS TLS.MinVersion:VersionTLS12 TLS.SniStrict:true TLS.CipherSuites:TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256,TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384,TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA' \
--defaultentrypoints=http,https --keeptrailingslash=true \
--acme=true \
--acme.entrypoint=https --acme.onhostrule=true --acme.tlsChallenge \
--acme.storage=/etc/traefik/acme/acme.json \
--acme.email=you@example.net
```
