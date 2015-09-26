# build-alpine-ceph
Builder for Alpine Ceph Port

I've been building this on OSX using ailispaw/boot2docker-xhyve

To build the port run the following:

```
docker build -t build-alpine-ceph .
docker run -ti -v `pwd`/build:/build build-alpine-ceph
```
