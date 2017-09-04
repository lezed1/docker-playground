#!/usr/bin/env bash
set -euo pipefail

packages2=(
    eventlet
    gevent
    matplotlib
    numpy
    posix_ipc
    # cairo
    pygame
    # gobject3
    # pysqlite
    # redis
    # six
    # systemd
    # termcolor
    # wxPython
)
packages3=(
    cython
    eventlet
    flask
    gevent
    ipython
    paramiko
    pyserial
    pyyaml
    redis
    requests
    scipy
    six
    tabulate
    termcolor
    tornado
    watchdog
)

pip2 install ${packages2[@]}
pip3 install ${packages3[@]}
