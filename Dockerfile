FROM alpine:edge

# deps
RUN apk --update add abuild bash git grep perl

ADD scripts /usr/local/bin
ADD etc /etc

RUN adduser -D build && \
    echo "build ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers && \
    addgroup build abuild && \
    chgrp abuild /var/cache/distfiles && \
    chmod g+w /var/cache/distfiles

ENV CCACHE_DIR /build/.ccache

VOLUME /build
WORKDIR /build

USER build

CMD [ "build" ]
