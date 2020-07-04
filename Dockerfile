FROM ubuntu:18.04
LABEL maintainer "jim@baldw.in"

# install apt-utils 'cuz node install seems to barf without it
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
RUN apt-get update
RUN apt-get install -y apt-utils build-essential curl

# install aws cli
RUN apt-get update
RUN apt-get install -y awscli
RUN aws --version

# install node
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get update
RUN apt-get install -y nodejs
RUN npm install -g yarn

# install git lfs
RUN curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash
RUN apt-get install -y git-lfs
RUN git lfs install
