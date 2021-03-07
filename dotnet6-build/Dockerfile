FROM debian:buster-slim

WORKDIR /mnt

RUN apt update && \
	env DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends \
		curl \
		git \
		libicu63 \
		wget \
		ca-certificates

RUN wget -c https://download.visualstudio.microsoft.com/download/pr/3b62cfcf-589e-43b3-993b-517c70c93a22/0ecae846884376fecc5de8a4f6d6c927/dotnet-sdk-6.0.100-preview.1.21103.13-linux-arm.tar.gz
RUN mkdir -p $HOME/dotnet && tar zxf dotnet-sdk-6.0.100-preview.1.21103.13-linux-arm.tar.gz -C $HOME/dotnet

RUN     echo "#!/bin/bash" >> /do.sh && \
        echo "export DOTNET_ROOT=$HOME/dotnet" >> /do.sh && \
        echo "export PATH=$PATH:$HOME/dotnet" >> /do.sh && \
        echo "\$@" >> /do.sh && \
        chmod +x /do.sh && \
        cat /do.sh

WORKDIR /mnt

ENTRYPOINT ["/do.sh"]

RUN rm -rf /var/lib/apt/lists/*
