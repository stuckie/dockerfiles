FROM debian:buster-slim

RUN apt update && \
	env DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends \
		fluxbox \
		build-essential \
		git \
		less \
		terminator \
		vim \
		wget \
		ca-certificates \
		gnupg \
		dirmngr \
		apt-transport-https \
		libxtst6 \
		libasound2 \
		libgl1
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
RUN echo "deb https://download.mono-project.com/repo/debian stable-buster main" | tee /etc/apt/sources.list.d/mono-official-stable.list
RUN apt update && env DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends mono-complete

RUN wget -c https://go.microsoft.com/fwlink/?LinkID=760868 -O code.deb
RUN env DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends ./code.deb
RUN rm -rf /var/lib/apt/lists/*

CMD fluxbox
