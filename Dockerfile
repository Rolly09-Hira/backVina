FROM openjdk:17-jdk-slim 
WORKDIR /app 
COPY . . 
RUN ./mvnw clean package -DskipTests 
EXPOSE 5005 
CMD ["java", "-jar", "target/spring.jar"] 
