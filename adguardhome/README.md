# Adguard Home

```
docker run \
-d \
--name adguardhome \
--restart unless-stopped \
--network macvlan0 \
--ip 192.168.31.48 \
-v /share/Docker/adguardhome/conf:/opt/adguardhome/conf \
-v /share/Docker/adguardhome/work:/opt/adguardhome/work \
adguard/adguardhome
```

```
docker network create \
--driver macvlan \
--subnet 192.168.31.0/24 \
--gateway 192.168.31.1 \
--opt parent=br0 \
macvlan0
```
