FROM maven:3-jdk-8-alpine AS build

WORKDIR /opt/app

COPY ./ /opt/app/

# Build a release artifact.
RUN mvn clean install

FROM openjdk:8-jdk-alpine

COPY --from=build /opt/app/target/*.jar app.jar

ENV PORT 8081
EXPOSE 8081

ENTRYPOINT [ "java","-jar","-Xmx1024M","-Dserver.port=${PORT}" ,"app.jar" ]
