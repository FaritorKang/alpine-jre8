# AlpineLinux open jre 8
FROM alpine:latest
MAINTAINER faritor<faritor@unmz.net>

ADD /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

# Install cURL
RUN echo -e "https://mirror.tuna.tsinghua.edu.cn/alpine/v3.9/main\n\
    https://mirror.tuna.tsinghua.edu.cn/alpine/v3.9/community" > /etc/apk/repositories

RUN apk --update add curl bash openjdk8-jre-base && \
    rm -rf /var/cache/apk/*

# Set environment
ENV JAVA_HOME /usr/lib/jvm/default-jvm
ENV PATH ${PATH}:${JAVA_HOME}/bin