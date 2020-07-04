FROM circleci/node:12-buster
LABEL maintainer "jim@baldw.in"
RUN curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
RUN sudo apt-get install -y git-lfs
RUN git lfs install
RUN sudo apt-get install -y build-essential gcc-8 g++-8 python python-pip curl openssl libssl-dev certbot nginx
RUN sudo unlink /usr/bin/gcc && sudo ln -s /usr/bin/gcc-8 /usr/bin/gcc
