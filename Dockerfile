FROM alpine:edge

# deps
RUN echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk --update add \
    acl-dev \
    alpine-sdk \
    argp-standalone \
    automake \
    autoconf \
    bash \
    bison \
    boost-dev \
    cmake \
    crypto++-dev@testing \
    crypto++@testing \
    curl-dev \
    eudev-dev \
    fcgi-dev \
    flex \
    fuse-dev \
    grep \
    keyutils-dev \
    libaio-dev \
    libatomic_ops-dev \
    libedit-dev \
    libexecinfo-dev@testing \
    libtirpc-dev \
    libtool \
    libxml2-dev \
    lvm2-dev \
    openssl-dev \
    python-dev \
    readline-dev \
    rpcgen \
    snappy-dev \
    userspace-rcu-dev \
    xfsprogs-dev \
    yasm

ADD scripts /usr/local/bin

RUN bootstrap

VOLUME /build
WORKDIR /build

CMD [ "build" ]
