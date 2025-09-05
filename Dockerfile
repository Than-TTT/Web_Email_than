FROM tomcat:11.0-jdk21-temurin

# Xóa app mặc định
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR vào Tomcat
COPY target/WebEmailThan.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]