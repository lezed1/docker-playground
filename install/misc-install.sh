#!/usr/bin/env bash
set -euo pipefail

useradd --create-home --shell /bin/bash --groups sudo software
echo "software:software" | chpasswd

echo "%sudo   ALL=(ALL:ALL) NOPASSWD:ALL" >> /etc/sudoers

# the stacks should be mounted at /home/software/software
rm /home/software/.bashrc
ln -s /home/software/cuauv/software/install/zshrc /home/software/.zshrc
