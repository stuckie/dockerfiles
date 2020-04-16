FROM debian:buster-slim

ARG USER=android

RUN apt update && \
	env DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends \
		fluxbox \
		build-essential \
		git \
		less \
		terminator \
		vim \
		clang \
		wget \
		x11-xserver-utils \
		ca-certificates \
		gimp \
		gdb

RUN dpkg --add-architecture i386
RUN apt update
RUN env DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends \
	libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386 \
        libxrender1 libxtst6 libxi6 libfreetype6 libxft2 \
        qemu qemu-kvm libvirt-clients bridge-utils libnotify4 libglu1 libqt5widgets5 xvfb

RUN mkdir -p /usr/share/man/man1
RUN env apt install -y openjdk-11-jdk

RUN wget -c https://go.microsoft.com/fwlink/?LinkID=760868 -O code.deb
RUN env DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends ./code.deb
RUN rm code.deb

ARG ANDROID_STUDIO_URL=https://dl.google.com/dl/android/studio/ide-zips/3.5.3.0/android-studio-ide-191.6010548-linux.tar.gz
ARG ANDROID_STUDIO_VERSION=3.5

RUN wget "$ANDROID_STUDIO_URL" -O android-studio.tar.gz
RUN tar xzvf android-studio.tar.gz
RUN rm android-studio.tar.gz

RUN rm -rf /var/lib/apt/lists/*

RUN echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="04e8", ATTR{idProduct}=="6860", MODE="0660", GROUP="plugdev", SYMLINK+="android%n"' > /etc/udev/rules.d/51-android.rules
ENV ANDROID_EMULATOR_USE_SYSTEM_LIBS=1

CMD fluxbox
