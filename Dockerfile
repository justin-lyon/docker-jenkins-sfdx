FROM jenkins/jenkins:lts
USER root

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt update && apt install -y nodejs

RUN npm i -g sfdx-cli \
    && nodejs -v \
    && npm -v \
    && sfdx --version \
    && sfdx plugins --core

USER jenkins
