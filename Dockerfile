FROM openjdk:15

LABEL maintainer="João Santos <joaopns05@gmail.com>"

ENV SONAR_SCANNER="sonar-scanner-cli-4.2.0.1873-linux"

RUN mkdir -p /usr/share/info/dir && yum -y -q install wget unzip

RUN wget -q "https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/${SONAR_SCANNER}.zip" && \
    unzip -q ${SONAR_SCANNER}.zip && \
    mv sonar-scanner-4.2.0.1873-linux /usr/local/lib/sonar-scanner && \
    ln -s /usr/local/lib/sonar-scanner/bin/sonar-scanner /usr/local/bin/sonar-scanner

CMD ["sonar-scanner"]
