# 1. Amazon Corretto 17 사용
FROM amazoncorretto:17-alpine-jdk

# 2. JAR 파일 복사 (빌드 아티팩트를 가져옴)
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

# 3. 환경 변수 설정
ENV PROFILES=default
ENV ENV=local

# 4. 실행 명령어
ENTRYPOINT ["java", "-Dspring.profiles.active=${PROFILES}", "-Dserver.env=${ENV}", "-jar", "/app.jar"]
