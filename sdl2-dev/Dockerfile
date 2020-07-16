FROM debian:buster-slim

RUN apt update && \
	env DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends \
		fluxbox \
		build-essential \
		git \
		less \
		terminator \
		vim \
		libsdl2-dev \
		clang \
		wget \
		x11-xserver-utils \
		ca-certificates \
		gimp \
		gdb

RUN wget -c https://go.microsoft.com/fwlink/?LinkID=760868 -O code.deb
RUN env DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends ./code.deb
RUN rm -rf code.deb

RUN rm -rf /var/lib/apt/lists/*

CMD fluxbox
