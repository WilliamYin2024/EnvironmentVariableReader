FROM amazoncorretto:21
LABEL authors="williamyin2024"

ARG UID=1000
ARG GID=1000

RUN groupadd -g ${GID} -r williamyin2024 && useradd -u ${UID} --no-log-init -r -m -g williamyin2024 william

WORKDIR /app

RUN chown -R williamyin2024:william /app

COPY target/EnvironmentVariableReader-1.0.0-jar-with-dependencies.jar /app

CMD ["java", "-jar", "EnvironmentVariableReader-1.0.0-jar-with-dependencies.jar"]