FROM ibmjava:8-sdk

MAINTAINER guig <gg@chaochuang.com.cn>

RUN rm /etc/localtime \
    && ln -s /usr/share/zoneinfo/Asia/Chongqing /etc/localtime \
    && sed -i 's|http://archive.ubuntu.com/|http://mirrors.aliyun.com/|g' /etc/apt/sources.list \
    && sed -i 's|^deb http://security.ubuntu.com/|#deb http://security.ubuntu.com/|g' /etc/apt/sources.list \
    && sed -i 's|^deb-src http://security.ubuntu.com/|#deb-src http://security.ubuntu.com/|g' /etc/apt/sources.list \
    && apt-get update \
    && apt-get install -y tzdata language-pack-zh-hans \
    && apt-get install -y fontconfig fonts-wqy-microhei fonts-wqy-zenhei xfonts-wqy \
    && locale-gen zh_CN.GB18030 zh_CN.GBK zh_CN.UTF-8 \
    && rm -rf /var/lib/apt/lists/*



ENV LANG=zh_CN.UTF-8 \
    LANGUAGE=zh_CN:zh
