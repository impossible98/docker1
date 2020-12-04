#

```
docker run \
-d \
--env database__client=mysql \
--env database__connection__host=mysql \
--env database__connection__user=root \
--env database__connection__password=password \
--env database__connection__database=ghost \
--link mysql:mysql \
--name ghost \
--publish 2368:2368 \
ghost
```
