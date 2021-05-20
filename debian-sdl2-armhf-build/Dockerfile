FROM debian:buster-slim

WORKDIR /mnt

RUN     dpkg --add-architecture armhf && \
	apt update && \
	env DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends \
		libsdl2-dev:armhf \
		libsdl2-image-dev:armhf \
		libsdl2-mixer-dev:armhf \
		libgcc-8-dev:armhf \
		make \
		clang \
		lld

RUN rm -rf /var/lib/apt/lists/*
