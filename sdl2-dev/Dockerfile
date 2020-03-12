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
		clang && \
	rm -rf /var/lib/apt/lists/*

CMD fluxbox
