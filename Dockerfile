FROM node:12.18.2-buster
LABEL maintainer "jim@baldw.in"
RUN curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash
RUN apt-get install -y git-lfs
RUN git lfs install
RUN apt-get install -y build-essential gcc-8 g++-8 python python-pip curl openssl libssl-dev certbot nginx
