# DEPRECATED

See https://github.com/dx9/ceph/blob/master/README.alpine.md

Will submit to aports soonish...

## build-alpine-ceph
Builder for [Alpine Ceph Port](https://github.com/dx9/ceph)

I've been building this on OSX using [boot2docker-xhyve](https://github.com/ailispaw/boot2docker-xhyve)

To build the port run the following:

```
docker build -t build-alpine-ceph .
docker run -ti -v `pwd`/build:/build build-alpine-ceph
```
