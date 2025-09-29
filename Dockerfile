FROM ghcr.io/linuxserver/baseimage-alpine:3.22

RUN \
    echo "**** install packages ****" && \
    apk add --no-cache pgbouncer && \
    adduser -S pgbouncer

COPY root/ /

EXPOSE 5432

VOLUME /config

