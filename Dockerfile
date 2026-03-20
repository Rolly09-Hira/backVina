FROM eclipse-temurin:17-jdk-alpine 
WORKDIR /app 
COPY . . 
RUN chmod +x mvnw 
RUN ./mvnw clean package -DskipTests 
EXPOSE 5005 
CMD ["java", "-jar", "target/spring.jar"] 
