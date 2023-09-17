FROM ubuntu:22.04

# Basic
RUN apt-get update && apt-get install -yq \
    git \
    git-lfs \
    sudo
    #&& apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/*

# Install your tools
RUN apt-get install -y wget apt-transport-https software-properties-common

# Create gitpod user
RUN useradd -l -u 33333 -G sudo -md /home/gitpod -s /bin/bash -p gitpod gitpod
USER gitpod

CMD ["bash"] s