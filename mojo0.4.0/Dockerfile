#
#
#
FROM ubuntu

LABEL maintainer="darryl.west" version="10.14.2023"

RUN apt-get update && apt-get install -y \
    make binutils autoconf automake autotools-dev libtool pkg-config cmake \
    build-essential curl wget jq neovim git-core gcc g++ uuid-dev clang \
    vim iputils-ping

RUN useradd --create-home dpw

ADD install.tgz /

WORKDIR /home/dpw

RUN curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh -s -- -y


EXPOSE 8888

CMD sleep infinity

