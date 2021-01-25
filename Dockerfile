FROM node:14.15.1

RUN apt update && apt install -y \
  openjdk-8-jre &&  \
  rm -rf /var/lib/apt/lists/*

RUN yarn global add firebase-tools@9.2.2
