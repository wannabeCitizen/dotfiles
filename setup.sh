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
echo "All done setting up your dotfiles!"
exit 0
