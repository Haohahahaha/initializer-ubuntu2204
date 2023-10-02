#! /bin/sh

# this script is going to stop after this line.
sed -i '11s/ZSH_THEME="robbyrussell"/ZSH_THEME="ys"/g' ~/.zshrc
source ~/.zshrc
