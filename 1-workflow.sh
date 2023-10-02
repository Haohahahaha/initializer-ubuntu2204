#! /bin/sh

# set root passwd
# sudo passwd root

# update apt
sudo apt update
sudo apt upgrade

# install vm-tools
sudo apt install open-vm-tools-desktop -y

# install work-tools
sudo apt install vim zsh tmux tree wget curl -y

# ysyx-SDK
sudo apt-get install -y build-essential    # build-essential packages, include binary utilities, gcc, make, and so on
sudo apt-get install -y man                # on-line reference manual
sudo apt-get install -y gcc-doc            # on-line reference manual for gcc
sudo apt-get install -y gdb                # GNU debugger
sudo apt-get install -y git                # revision control system
sudo apt-get install -y libreadline-dev    # a library used later
sudo apt-get install -y libsdl2-dev        # a library used later
sudo apt-get install -y llvm llvm-dev      # llvm project, which contains libraries used later


