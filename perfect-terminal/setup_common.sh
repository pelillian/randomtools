#!/usr/bin/env bash

cd
mv ~/.vim ~/.vim-old
mv ~/.vimrc ~/.vimrc.old
mv ~/.zshrc ~/.zshrc.old
mv ~/.tmux.conf ~/.tmux.conf.old
mv ~/.inputrc ~/.inputrc.old
ln -s ~/Git/randomtools/perfect-terminal/.vim ~/.vim
ln -s ~/Git/randomtools/perfect-terminal/.vimrc ~/.vimrc
ln -s ~/Git/randomtools/perfect-terminal/.zshrc ~/.zshrc
ln -s ~/Git/randomtools/perfect-terminal/.tmux.conf ~/.tmux.conf
ln -s ~/Git/randomtools/perfect-terminal/.inputrc ~/.inputrc

echo 'source ~/.vimrc' >> ~/.ideavimrc

cd ~/Git/randomtools/
git config submodule.recurse true
git submodule update --init

# Add our custom bashrc append
cat ~/Git/randomtools/perfect-terminal/append.bashrc >> ~/.bashrc
. ~/.bashrc

cd
