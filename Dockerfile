FROM alpine:${ALPINE_VERSION:-3.20}

RUN apk add --update --no-cache busybox-extras

COPY etc/ /etc/

COPY entrypoint.sh /usr/local/bin/

EXPOSE 23

ENTRYPOINT ["entrypoint.sh"]
