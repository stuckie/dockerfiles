FROM debian:buster-slim

WORKDIR /mnt

RUN apt update && \
	env DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends \
		libsdl2-dev \
		libsdl2-image-dev \
		libsdl2-mixer-dev \
		make \
		clang 

RUN rm -rf /var/lib/apt/lists/*
