FROM debian:buster-slim

RUN	mkdir -p /usr/share/man/man1 && \
	apt update && \
	env DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends \
		make \
		cmake \
		file \
		python \
		python3 \
		python3-pip \
		binutils \
		libxml2 \
		curl \
		build-essential \
		openjdk-11-jre-headless \
		git \
		libidn11 \
		zip \
		unzip \
		ca-certificates \
		wget

RUN	wget -c https://github.com/emscripten-core/emsdk/archive/2.0.21.tar.gz && \
	tar -zxvf 2.0.21.tar.gz

RUN	cd emsdk* && \
	./emsdk install latest && \
	./emsdk activate latest && \
	. ./emsdk_env.sh

RUN	echo "#!/bin/bash" >> /do.sh && \
	echo "source /emsdk-2.0.21/emsdk_env.sh" >> /do.sh && \
	echo "\$@" >> /do.sh && \
	chmod +x /do.sh && \
	cat /do.sh

WORKDIR	/mnt

RUN rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/do.sh"]
