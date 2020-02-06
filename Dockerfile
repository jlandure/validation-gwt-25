# Build using
# docker run -v $HOME/.m2:/root/.m2 -v $PWD:/usr/src/app -w /usr/src/app maven:3-alpine mvn package

FROM jetty:8
COPY ./target/Validation-1.0-SNAPSHOT.war /usr/local/jetty/webapps/Validation.war
COPY ./gwt-user.jar /usr/local/jetty/lib/gwt-user.jar