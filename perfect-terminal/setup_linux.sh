#!/usr/bin/env bash

#sudo apt-get update
#sudo apt-get install zsh -y
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sed 's:env zsh -l::g' | sed 's:chsh -s .*$::g')"

cd
mv ~/.vim ~/.vim-old
mv ~/.vimrc ~/.vimrc.old
mv ~/.zshrc ~/.zshrc.old
mv ~/.tmux.conf ~/.tmux.conf.old
ln -s ~/Git/randomtools/perfect-terminal/.vim ~/.vim
ln -s ~/Git/randomtools/perfect-terminal/.vimrc ~/.vimrc
ln -s ~/Git/randomtools/perfect-terminal/.zshrc ~/.zshrc
ln -s ~/Git/randomtools/perfect-terminal/.tmux.conf ~/.tmux.conf

# Case-insensitive tab completion
if [ ! -a ~/.inputrc ]; then echo '$include /etc/inputrc' > ~/.inputrc; fi
echo 'set completion-ignore-case On' >> ~/.inputrc

gsettings set org.gnome.nautilus.desktop trash-icon-visible false

