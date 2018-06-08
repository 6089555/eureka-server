# Dockerfile for eureka-server
# Build with:
# docker build -t eureka-server
# Run with:
# docker run -p 8001:8001 -d -v /tmp/logs:/data/eureka-server/logs --name eureka-server

FROM java:8-jre

ENV VERSION 3.0.0-SNAPSHOT

VOLUME /tmp
ADD eureka-server.jar app.jar
RUN bash -c 'touch /app.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]

EXPOSE 8001

