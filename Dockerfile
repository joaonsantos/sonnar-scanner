FROM openjdk:12

LABEL maintainer="João Santos <joaopns05@gmail.com>"

ENV SONAR_SCANNER="sonar-scanner-cli-4.0.0.1744-linux"

RUN yum -y -q install wget unzip && \
    wget -q "https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/${SONAR_SCANNER}.zip" && \
    unzip -q ${SONAR_SCANNER}.zip && \
    mv sonar-scanner-4.0.0.1744-linux /usr/local/lib/sonar-scanner && \
    ln -s /usr/local/lib/sonar-scanner/bin/sonar-scanner /usr/local/bin/sonar-scanner

CMD ["sonar-scanner"]
