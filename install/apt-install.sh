#!/usr/bin/env bash

set -euo pipefail

packages=(
    # general
    autossh
    jq
    libboost-python-dev
    libdc1394-22-dev
    libeigen3-dev
    libncurses-dev
    libpopt-dev
    libpython-dev
    pandoc
    stow
	htop
	neovim

    # mission
    python3-termcolor

    # control

    # serial
    libgtest-dev
    libgtkmm-3.0-dev
    libprotoc-dev
    protobuf-compiler

    # vision
    libavcodec-dev
    libavformat-dev
    libdc1394-22
    libswscale-dev
    python3-yaml

    # trogdor
    expect-dev
    python-dbus
    python-termcolor

    # visualizer
    libconfig++
    libglfw3-dev
    libglm-dev

    # fishbowl
    libeigen3-dev

    # auvlog
    libnanomsg-dev
    python-redis
    redis-server

    # syscheck
    sysstat

    # other
    python-redis # (to run the logging server)
    python-wxgtk3.0 # (for auv-shm-editor)
    python3-paramiko # (for uptime)
    python3-tabulate

    # aslam
    liblzma-dev
)

export DEBIAN_FRONTEND=noninteractive

apt-get install -y software-properties-common # For add-apt-repository
add-apt-repository ppa:neovim-ppa/stable
apt-get update

apt-get install -y ${packages[@]}

# Add Neovim alternatives (https://github.com/neovim/neovim/wiki/Installing-Neovim)
update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
update-alternatives --config vi
update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
update-alternatives --config vim
update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
update-alternatives --config editor
