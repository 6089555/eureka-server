# Dockerfile for @project.build.finalName@
# Build with:
# docker build -t @project.build.finalName@
# Run with:
# docker run -p 8001:8001 -d -v /tmp/logs:/opt/@project.build.finalName@/logs --name @project.build.finalName@

FROM java:8-jre

ENV VERSION 3.0.0-SNAPSHOT

VOLUME /tmp
ADD @project.build.finalName@.jar app.jar
RUN bash -c 'touch /app.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]

EXPOSE 8001

