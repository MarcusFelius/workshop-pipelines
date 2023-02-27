FROM eclipse-temurin:17.0.3_7-jdk
VOLUME /tmp
ADD target/workshop-pipelines.jar app.jar
ADD target/dependency/jacocoagent.jar jacocoagent.jar
ENTRYPOINT exec java $JAVA_OPTS -jar /app.jar
