# AlpineLinux open jre 8
FROM alpine:latest
MAINTAINER faritor<faritor@unmz.net>

# Install cURL
RUN echo -e "https://mirror.tuna.tsinghua.edu.cn/alpine/v3.9/main\n\
    https://mirror.tuna.tsinghua.edu.cn/alpine/v3.9/community" > /etc/apk/repositories

RUN apk --update add -U curl bash openjdk8-jre-base tzdata && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime  \
    rm -rf /var/cache/apk/*

# Set environment
ENV JAVA_HOME /usr/lib/jvm/default-jvm
ENV PATH ${PATH}:${JAVA_HOME}/bin