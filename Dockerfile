FROM openjdk:16
ARG JAR_FILE=build/libs/kotlin_logger_exec.jar
WORKDIR /usr/local/bin/
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","app.jar"]