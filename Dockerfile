FROM ubuntu:18.04
LABEL maintainer "jim@baldw.in"

# install apt-utils 'cuz node install seems to barf without it
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
RUN apt-get update
RUN apt-get install -y apt-utils curl

# install aws cli
RUN apt-get update
RUN apt-get install -y awscli
RUN aws --version

# install node
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get update
RUN apt-get install -y nodejs
RUN npm install -g clang-tools-prebuilt

# install git lfs
RUN curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash
RUN apt-get install -y git-lfs
RUN git lfs install

# install build tools
RUN apt-get install -y build-essential gcc-8 g++-8 python python-pip curl openssl libssl-dev certbot nginx
RUN unlink /usr/bin/gcc && ln -s /usr/bin/gcc-8 /usr/bin/gcc

