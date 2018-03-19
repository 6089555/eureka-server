# Dockerfile for @project.build.finalName@
# Build with:
# docker build -t @project.build.finalName@
# Run with:
# docker run -p 8001:8001 -d -v /tmp/logs:/opt/@project.build.finalName@/logs --name @project.build.finalName@

FROM java:8-jre

ENV VERSION 3.0.0-SNAPSHOT

RUN echo "http://mirrors.aliyun.com/alpine/v3.6/main" > /etc/apk/repositories \
    && echo "http://mirrors.aliyun.com/alpine/v3.6/community" >> /etc/apk/repositories \
    && apk update upgrade \
    && apk add --no-cache procps unzip curl bash tzdata \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone

VOLUME /tmp
ADD @project.build.finalName@.jar app.jar
RUN bash -c 'touch /app.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]

EXPOSE 8001

