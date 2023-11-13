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

# install SDL lib
sudo apt-get install -y libsdl1.2-dev
sudo apt-get install -y libsdl-image1.2-dev
sudo apt-get install -y libsdl-ttf2.0-dev
sudo apt-get install -y libsdl-gfx1.2-dev
sudo apt-get install -y libsdl-mixer1.2-dev

echo "export NEMU_HOME=/home/hz/Documents/Repos/ysyx-workbench/nemu
export AM_HOME=/home/hz/Documents/Repos/ysyx-workbench/abstract-machine
export NPC_HOME=/home/hz/Documents/Repos/ysyx-workbench/npc
export NVBOARD_HOME=/home/hz/Documents/Repos/ysyx-workbench/nvboard

alias l=\"pwd && tree -hL 2\"" >> ~/.zshrc


sudo cp /usr/include/SDL2/* /usr/include/
sudo cp /usr/include/SDL/* /usr/include/

