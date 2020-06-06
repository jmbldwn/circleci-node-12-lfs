FROM circleci:12-buster
LABEL maintainer "jim@baldw.in"

RUN curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash \
    apt-get install git-lfs \
    git lfs install
