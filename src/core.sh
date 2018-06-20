#!/usr/bin/env bash

echo "Installing core development libraries (a lot of stuff :P)..."
apt-get update && apt-get upgrade
apt-get install -y  make \
                    build-essential \
                    software-properties-common \
                    libssl-dev \
                    libffi-dev \
                    zlib1g-dev \
                    libbz2-dev \
                    libreadline-dev \
                    libsqlite3-dev \
                    llvm \
                    libncurses5-dev \
                    libncursesw5-dev \
                    unixodbc \
                    unixodbc-dev \
                    libaio1 \
                    freetds-bin \
                    freetds-dev \
                    tdsodbc \
                    alien \
                    apt-transport-https \
                    ca-certificates \
                    git \
                    virtualbox \
                    virtualbox-ext-pack \
                    virtualbox-guest-additions-iso \
                    virtualbox-guest-dkms \
                    virtualbox-guest-source \
                    virtualbox-guest-utils \
                    virtualbox-guest-x11 \
                    automake \
                    autoconf \
                    pkg-config \
                    libgtk-3-dev \
                    libtiff5-dev \
                    libjpeg8-dev \
                    zlib1g-dev \
                    libfreetype6-dev \
                    liblcms2-dev \
                    libwebp-dev \
                    tcl8.6-dev \
                    tk8.6-dev \
                    python-tk \
                    python-dev \
                    vim \
                    curl \
                    nano \
                    members \
                    exfat-utils \
                    exfat-fuse \
                    unrar \
                    net-tools \
                    cmake \
                    silversearcher-ag \
                    openssh-server \
                    nfs-kernel-server \
                    samba \
                    samba-common \
                    system-config-samba \
                    manpages-dev \
                    cifs-utils \
                    htop \
                    clang-format \
                    clang-format-4.0 \
                    parallel

# enable syntax highlighting for all the available languages
find /usr/share/nano/ -iname "*.nanorc" -exec echo include {} \; >> ~/.nanorc

# enable ssh connection
sudo systemctl enable ssh

echo "A lot of libraries have been installed for you :)"
