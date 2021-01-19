FROM node:14.15.1

RUN apt update && apt install -y \
  openjdk-8-jre &&  \
  rm -rf /var/lib/apt/lists/*

RUN yarn global add firebase-tools

WORKDIR /usr/app/run

RUN wget https://dl.bintray.com/boostorg/release/1.70.0/source/boost_1_70_0.tar.gz && \
  mkdir include && \
  tar zxvf boost_1_70_0.tar.gz --strip-components=1 -C ./include boost_1_70_0/boost && \
  rm -rf boost_1_70_0.tar.gz
