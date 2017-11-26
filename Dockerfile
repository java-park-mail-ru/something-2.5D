FROM maven:latest

#COPY ./ /server/
#RUN mvn install -DskipTests=true -Dmaven.javadoc.skip=true -B -V

USER root
#WORKDIR /server/target
COPY ./target/tanks-1.5.6.RELEASE.jar /server/target/tanks-1.5.6.RELEASE.jar

EXPOSE 8080

CMD ["/usr/bin/java", "-jar", "/server/target/tanks-1.5.6.RELEASE.jar"]
