FROM debian:buster-slim

WORKDIR /mnt

RUN apt update && \
	env DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends \
		git \
		mingw-w64 \
		wget \
		make \
		cmake \
		ca-certificates

RUN mkdir /usr/local/x86_64-w64-mingw32 && \
    mkdir /usr/local/i686-w64-mingw32 && \
    mkdir SDL2 && \
    cd SDL2 && \
    wget -c https://www.libsdl.org/release/SDL2-devel-2.0.14-mingw.tar.gz && \
    tar -zxvf SDL2-devel-2.0.14-mingw.tar.gz && \
    cd SDL2-2.0.14 && \
    make cross

RUN cd .. && \
    wget -c https://www.libsdl.org/projects/SDL_mixer/release/SDL2_mixer-devel-2.0.4-mingw.tar.gz && \
    tar -zxvf SDL2_mixer-devel-2.0.4-mingw.tar.gz && \
    cd SDL2_mixer-2.0.4 && \
    make cross

RUN cd .. && \
    wget -c https://www.libsdl.org/projects/SDL_image/release/SDL2_image-devel-2.0.5-mingw.tar.gz && \
    tar -zxvf SDL2_image-devel-2.0.5-mingw.tar.gz && \
    cd SDL2_image-2.0.5 && \
    make cross

RUN cd .. && \
    cd .. && \
    rm -rf SDL2

RUN apt clean && \
    rm -rf /var/lib/apt/lists/*
