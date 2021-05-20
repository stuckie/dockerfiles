FROM debian:buster-slim

WORKDIR /mnt

RUN     dpkg --add-architecture amd64 && \
	apt update && \
	env DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends \
		libsdl2-dev:amd64 \
		libsdl2-image-dev:amd64 \
		libsdl2-mixer-dev:amd64 \
		libgcc-8-dev:amd64 \
		make \
		clang \
		lld

RUN rm -rf /var/lib/apt/lists/*
