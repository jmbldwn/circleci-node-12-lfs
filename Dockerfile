FROM circleci/node:12-buster
LABEL maintainer "jim@baldw.in"
RUN curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
RUN sudo apt-get install -y git-lfs
RUN git lfs install
RUN sudo apt-get install -y build-essential
