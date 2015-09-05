#!/bin/bash
#Run this after cloning dotfiles into your repo
mv vimrc ~/.vimrc

mkdir ~/.vim && mkdir ~/.vim/bundle && mkdir ~/.vim/autoload
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle
git clone https://github.com/altercation/vim-colors-solarized.git
git clone https://github.com/scrooloose/nerdtree.git
git clone --recursive https://github.com/davidhalter/jedi-vim.git
git clone https://github.com/vim-scripts/Align.git

USER=`id -nu`
BASHRC=".bashrc"
if [-e "/home/$USER/$BASHRC"]
then    
    echo "export PS1='`if [ $? = 0 ]; then echo "\[\033[01;32m\]✔"; else echo "\[\033[01;31m\]✘"; fi` \[\033[01;30m\]\h\[\033[01;34m\] \w\[\033[0;36m\]\$(__git_ps1 " %s") \[\033[01;30m\]>\[\033[00m\] '" >> /home/$USER/$BASHRC
fi

echo "All done setting up your dotfiles!"
exit 0
