# build-alpine-ceph
Builder for Alpine Ceph Port

To build the port run the following:

docker build -t build-alpine-ceph .
docker run -ti -v `pwd`/build:/build build-alpine-ceph
