FROM ibmjava:8-sdk-alpine

MAINTAINER guig <gg@chaochuang.com.cn>

RUN rm /etc/localtime \
    && ln -s /usr/share/zoneinfo/Asia/Chongqing /etc/localtime \
    && apk update \
    && apk add tzdata ttf-dejavu \
    && rm -rf /var/cache/apk/* \
    && wget -O- http://sourceforge.mirrorservice.org/w/wq/wqy/wqy-zenhei/0.9.45%20\(Fighting-state%20RC1\)/wqy-zenhei-0.9.45.tar.gz | tar -xzf - -C /usr/share/fonts/ \
    && fc-cache -f \
    && find /usr/share/fonts/ -name "wqy*" -maxdepth 1 | head -n 1 | xargs -n 1 -I{} ln -s {} /opt/ibm/java/jre/lib/fonts/fallback

ENV LANG=zh_CN.UTF-8 \
    LANGUAGE=zh_CN:zh \
    IBM_JAVA_OPTIONS="$IBM_JAVA_OPTIONS -Dfile.encoding=UTF-8 -Dsun.jnu.encoding=UTF-8 -Duser.language=zh -Duser.country=CN"

