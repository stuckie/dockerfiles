FROM debian:buster-slim

WORKDIR /mnt

RUN apt update && \
	env DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends \
		curl \
		git \
		libicu63 \
		wget \
		ca-certificates

RUN wget -c https://download.visualstudio.microsoft.com/download/pr/bd2c0cea-b1b5-4de8-941b-2b53f94df021/51bdc3008f95104c1e5bf1cd7f34cf78/dotnet-sdk-6.0.100-preview.3.21202.5-linux-arm.tar.gz
RUN mkdir -p $HOME/dotnet && tar zxf dotnet-sdk* -C $HOME/dotnet

RUN     echo "#!/bin/bash" >> /do.sh && \
        echo "export DOTNET_ROOT=$HOME/dotnet" >> /do.sh && \
        echo "export PATH=$PATH:$HOME/dotnet" >> /do.sh && \
        echo "\$@" >> /do.sh && \
        chmod +x /do.sh && \
        cat /do.sh

WORKDIR /mnt

ENTRYPOINT ["/do.sh"]

RUN rm -rf /var/lib/apt/lists/*
