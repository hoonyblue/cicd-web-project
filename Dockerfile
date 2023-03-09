# openjdk8 base image
FROM tomcat:8.5.46-jdk8-openjdk

## tomcat root 경로 삭제
RUN rm -Rf /usr/local/tomcat/webapps/ROOT 

# jar 파일이 복사되는 위치
ENV APP_HOME=/usr/app/
# 작업 시작 위치
WORKDIR $APP_HOME
# jar 파일 복사
#COPY build/libs/*.jar app.jar
COPY ./target/*.war /usr/local/tomcat/webapps/ROOT.war

# application port
#EXPOSE 8000
# 실행
#CMD ["java", "-Dspring.profiles.active=${profile:default}", "-jar", "app.jar"]


