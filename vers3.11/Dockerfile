#
#
#
FROM python:3.11-bookworm

LABEL maintainer="darryl.west" version="09.21.2023"

RUN apt-get update && apt-get install -y \
    make binutils autoconf automake autotools-dev libtool pkg-config cmake \
    build-essential curl wget jq neovim git-core gcc g++ uuid-dev clang \
    vim iputils-ping libboost-all-dev libhiredis-dev

RUN useradd --create-home dpw

ADD install.tgz /

WORKDIR /home/dpw

RUN curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh -s -- -y


EXPOSE 8888

CMD sleep infinity

