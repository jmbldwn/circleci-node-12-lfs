FROM ubuntu:18.04
LABEL maintainer "jim@baldw.in"

# install node
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get update
RUN apt-get install -y nodejs

# install aws cli
apt-get update
apt-get install -y awscli
aws --version

# install git lfs
RUN curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash
RUN apt-get install -y git-lfs
RUN git lfs install

# install build tools
RUN apt-get install -y build-essential 
