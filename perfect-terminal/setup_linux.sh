#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sed 's:env zsh -l::g' | sed 's:chsh -s .*$::g')"

cd
mv ~/.vim ~/.vim-old
mv ~/.vimrc ~/.vimrc.old
mv ~/.zshrc ~/.zshrc.old
ln -s ~/git/randomtools/perfect-terminal/.vim ~/.vim
ln -s ~/git/randomtools/perfect-terminal/.vimrc ~/.vimrc
ln -s ~/git/randomtools/perfect-terminal/.zshrc ~/.zshrc
