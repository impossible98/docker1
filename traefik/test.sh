docker run \
-d \
--name whoami \
-l traefik.enable=true \
-l traefik.http.routers.whoami.rule=Host\(\`whoami.localhost\`\) \
-l traefik.http.routers.whoami.entrypoints=http \
traefik/whoami
