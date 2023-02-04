FROM maven:3.3-jdk-8

RUN mkdir -p /Public/log/
RUN chmod 777 /Public/*
EXPOSE 8080

ENTRYPOINT ["sh"]

# Build the container
#docker build -t cookiecutters/java .
#docker run -it --rm --name my-maven-project -v "$(pwd)":/usr/src/template -w /usr/src/template cookiecutters/java

# Execute maven and java
#RUN mvn clean install
#RUN java -jar target/{{cookiecutter.app_name}}.jar
