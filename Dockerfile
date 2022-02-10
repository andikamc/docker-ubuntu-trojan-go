FROM andikamc/ubuntu-baseline:bionic

# Update package list
RUN apt -y update && \
    apt -y upgrade

# Install required package
RUN apt install -y cmake make socat && \
    apt install -y libssl-dev libnspr4-dev libnss3-dev pkg-config zip unzip

# Configure Command
ADD /sources/config /tmp
ADD /sources/commands /tmp
RUN dos2unix /tmp/configure-* && \
    chmod +x /tmp/configure-* && \
    sh -c /tmp/configure-trojan-go && \
    sh -c /tmp/configure-udpgw

# Clear Temp
RUN rm /etc/timezone && \
    echo "Asia/Jakarta" | sudo tee /etc/timezone && \
    rm -rf /tmp/* && \
    apt -y autoclean && \
    apt -yqq autoremove && \
    apt -y clean && \
    rm -rf /var/lib/apt/lists/* && \
    touch /var/log/installed.log && \
    rm /var/log/*.log

# Container Environment
WORKDIR /home/vhosts
LABEL maintainer="Andika Muhammad Cahya <andkmc99@gmail.com>"
LABEL container="TROJAN SERVER+WS (TROJAN-GO)"