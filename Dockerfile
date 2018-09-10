FROM alpine:3.8
LABEL maintainer "By toshcn - https://github.com/toshcn"

RUN cp /etc/apk/repositories /etc/apk/repositories.bak \
    && sed -i 's/http:\/\/dl-cdn.alpinelinux.org/https:\/\/mirrors.aliyun.com/g' /etc/apk/repositories \
    && apk update --no-cache \
    && apk upgrade --no-cache
