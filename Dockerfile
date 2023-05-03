FROM openjdk
EXPOSE 8082
ENTRYPOINT ["java","-jar","devops-integration.jar"]
