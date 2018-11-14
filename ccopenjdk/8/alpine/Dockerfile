FROM openjdk:8-jdk-alpine

MAINTAINER guig <gg@chaochuang.com.cn>

RUN rm /etc/localtime \
    && ln -s /usr/share/zoneinfo/Asia/Chongqing /etc/localtime \
    && apk update \
    && apk add tzdata ttf-dejavu \
    && rm -rf /var/cache/apk/* \
    && wget -O- http://sourceforge.mirrorservice.org/w/wq/wqy/wqy-zenhei/0.9.45%20\(Fighting-state%20RC1\)/wqy-zenhei-0.9.45.tar.gz | tar -xzf - -C /usr/share/fonts/ \
    && fc-cache -f

ENV LANG=zh_CN.UTF-8 \
    LANGUAGE=zh_CN:zh

