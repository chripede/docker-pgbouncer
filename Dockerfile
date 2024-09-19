FROM ghcr.io/linuxserver/baseimage-alpine:3.20

RUN \
    echo "**** install packages ****" && \
    apk add --no-cache pgbouncer && \
    adduser -S pgbouncer

COPY root/ /

EXPOSE 5432

VOLUME /config

