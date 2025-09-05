# Stage 1: Build app bằng Maven
FROM maven:3.9.6-eclipse-temurin-21 AS build

WORKDIR /app

# Copy toàn bộ project
COPY . .

# Build file WAR (bỏ test cho nhanh)
RUN mvn clean package -DskipTests

# Stage 2: Runtime Tomcat
FROM tomcat:11.0-jdk21-temurin

# Xóa app mặc định của Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR từ stage build vào Tomcat
COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
