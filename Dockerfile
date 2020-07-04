FROM ubuntu:18.04
LABEL maintainer "jim@baldw.in"

# install apt-utils 'cuz node install seems to barf without it
RUN apt-get update
RUN apt-get install -y apt-utils

# install aws cli
RUN apt-get update
RUN apt-get install -y awscli
RUN aws --version

# install node
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get update
RUN apt-get install -y nodejs

# install git lfs
RUN curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash
RUN apt-get install -y git-lfs
RUN git lfs install

# install build tools
RUN apt-get install -y build-essential 
