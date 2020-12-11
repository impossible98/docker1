# Adguard Home

## Docker

```
docker run \
--detach \
--name adguardhome \
--publish 53:53/tcp \
--publish 53:53/udp \
--publish 3000:3000/tcp \
-v /mnt/user/Nas/docker/adguardhome/work:/opt/adguardhome/work \
-v /mnt/user/Nas/docker/adguardhome/conf:/opt/adguardhome/conf \
adguard/adguardhome
```

## Docker Compose

```
docker-compose --project-name adguardhome up --detach
```

or

```
cat > docker-compose.yml << EOF
version: '3'
services:
  adguardhome:
    container_name: adguardhome
    image: adguard/adguardhome
    restart: always
    volumes:
      - /usr/share/docker/adguardhome/conf:/opt/adguardhome/conf
      - /usr/share/docker/adguardhome/work:/opt/adguardhome/work
    ports:
      - '53:53'
      - 53:53/udp
      - 3000:3000
EOF
docker-compose --project-name adguardhome up --detach
```
