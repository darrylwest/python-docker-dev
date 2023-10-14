#
#
#
FROM python:3.12-bookworm

LABEL maintainer="darryl.west" version="10.14.2023"

RUN apt-get update && apt-get install -y \
    make binutils autoconf automake autotools-dev libtool pkg-config cmake \
    build-essential curl wget jq neovim git-core gcc g++ uuid-dev clang \
    vim iputils-ping libboost-all-dev libhiredis-dev

RUN useradd --create-home dpw

ADD install.tgz /

WORKDIR /home/dpw

RUN curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh -s -- -y

# install mojo
RUN curl https://get.modular.com MODULAR_AUTH=mut_85ced75a7cb0449bb4100f4dd0d36e02 sh -
RUN modular install mojo

CMD sleep infinity

