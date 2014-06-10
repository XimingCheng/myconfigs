#!/bin/sh
# install all need package
# need the super user permission only support for debian/Ubuntu/Mint
# author XimingCheng

# linux c/c++ complier with gcc and clang
apt-get -qq install build-essential
apt-get -qq install clang libclang-dev

# linux cmake tools
apt-get -qq install cmake

# git subversion source ctrl
apt-get -qq install git subversion

# wxWidegets dev
apt-get -qq install libx11-dev libwxbase2.8-dev libwxgtk2.8-dev libwxsqlite3-2.8-dev

# vim (ruby support)
apt-get -qq install vim-nox

# java
apt-get -qq install openjdk-7-jdk

# utiles
apt-get -qq install htop
apt-get -qq install upower
apt-get -qq install vlc
apt-get -qq install tmux
apt-get -qq install meld
apt-get -qq install curl
apt-get -qq install libpython-dev
apt-get -qq install ctags

apt-get -qq install zsh
apt-get -qq install ruby-dev
apt-get -qq install rake
# more package will be added in the future
