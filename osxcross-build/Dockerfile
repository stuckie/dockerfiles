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
		patch \
		libxml2-dev \
		lzma-dev \
		curl \
		build-essential \
		git \
		unzip \
		libssl-dev \
		pkg-config \
		clang \
		llvm-dev \
		uuid-dev \
		ca-certificates \
		wget

RUN	git clone https://github.com/tpoechtrager/osxcross.git

COPY	MacOSX*.sdk.tar.bz2 /osxcross/tarballs

RUN	cd osxcross && \
	UNATTENDED=1 ./build.sh

RUN	export PATH=$PATH:/osxcross/target/bin/ && \
	export MACOSX_DEPLOYMENT_TARGET=10.9 && \
	UNATTENDED=1 omp install libsdl2 && \
	UNATTENDED=1 omp install libsdl2_image && \
	UNATTENDED=1 omp install libsdl2_mixer

RUN	rm -rf /var/lib/apt/lists/*

RUN     echo "#!/bin/bash" >> /do.sh && \
        echo "export PATH=\$PATH:/osxcross/target/bin/" >> /do.sh && \
	echo "export MACOSX_DEPLOYMENT_TARGET=10.9" >> /do.sh && \
	echo "export OSXCROSS_MP_INC=1" >> /do.sh && \
        echo "\$@" >> /do.sh && \
        chmod +x /do.sh && \
        cat /do.sh

WORKDIR	/mnt

ENTRYPOINT ["/do.sh"]
