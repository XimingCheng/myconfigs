#!/bin/sh
# config debian/ubuntu software
# no need of super user permission
# software config scripts copying
cp ../configs/bash_profile      ~/.bash_profile
cp ../configs/bashrc            ~/.bashrc
cp ../configs/gdbinit           ~/.gdbinit
cp ../configs/tmux.conf         ~/.tmux.conf
cp ../configs/vimrc             ~/.vimrc

# git config settings
git config core.editor=vim
git config user.name=Ximing Cheng
git config user.email=chengximing1989@gmail.com
git config color.diff=quto
git config color.status=auto
git config color.branch=auto
git config interactive=auto

# create vim plugin dir and github dir
[[ -d '~/.vim/bundle' ]] || mkdir -p ~/.vim/bundle
[[ -d '~/github' ]] || mkdir ~/github

cd ~/github
git clone https://github.com/zsh-users/zsh-completions.git
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone https://github.com/Lokaltog/powerline-fonts.git

wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s 'which zsh'
# sudo shutdown -r 0
cd ~/.fonts/ && git clone https://github.com/scotu/ubuntu-mono-powerline.git && cd ~

cd ~/.vim/bundle
git clone https://github.com/vim-scripts/awk.vim.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/vim-scripts/TagHighlight.git
git clone https://github.com/wincent/Command-T.git
git clone https://github.com/Raimondi/delimitMate.git
git clone https://github.com/kien/rainbow_parentheses.vim.git
git clone https://github.com/scrooloose/syntastic.git
git clone https://github.com/altercation/vim-colors-solarized.git
git clone https://github.com/octol/vim-cpp-enhanced-highlight.git
git clone https://github.com/nathanaelkane/vim-indent-guides.git
git clone https://github.com/Lokaltog/vim-powerline.git
git clone https://github.com/gmarik/vundle.git
git clone https://github.com/Valloric/YouCompleteMe.git

# for clang to obtain the include path
#   echo | clang -v -E -x c++ -
# for gcc/g++ to obtain the include path
#  `gcc -print-prog-name=cc1plus` -v
#  `g++ -print-prog-name=cc1plus` -v

#cp ../configs/ycm_extra_conf.py 

