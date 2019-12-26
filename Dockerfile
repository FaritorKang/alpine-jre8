# AlpineLinux open jre 8
FROM alpine:latest
MAINTAINER faritor<faritor@unmz.net>

# update aliyun repositories
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories 

RUN apk --update add curl bash openjdk8-jre-base tzdata && \
    cp -r -f /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime && \
    rm -rf /var/cache/apk/*

# Set environment
ENV JAVA_HOME /usr/lib/jvm/default-jvm
ENV PATH ${PATH}:${JAVA_HOME}/bin