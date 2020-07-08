FROM mysql:5.7

MAINTAINER guig <gg@chaochuang.com.cn>

RUN rm /etc/localtime \
    && ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && sed -i -e 's|/deb.debian.org/|/mirrors.163.com/|g' -e 's|/security.debian.org/|/mirrors.163.com/|g' /etc/apt/sources.list \
    && apt-get update \
    && apt-get install -y tzdata locales \
    && apt-get install -y fontconfig fonts-wqy-microhei fonts-wqy-zenhei xfonts-wqy \
    && sed -i -e 's|# en_US.UTF-8|en_US.UTF-8|g' -e 's|# zh_CN.GB18030|zh_CN.GB18030|g' -e 's|# zh_CN.GBK|zh_CN.GBK|g' -e 's|# zh_CN.UTF-8|zh_CN.UTF-8|g' -e 's|# zh_CN GB2312|zh_CN GB2312|g' /etc/locale.gen \
    && locale-gen \
    && rm -rf /var/lib/apt/lists/* \
    && echo "\n[mysqld]\nlower_case_table_names=1\n\ncharacter-set-server=utf8\ndefault-time-zone='+8:00'\n" > /etc/mysql/conf.d/my-zh-base.cnf


ENV LANG=zh_CN.UTF-8 \
    LANGUAGE=zh_CN:zh
