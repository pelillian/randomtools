#!/usr/bin/env bash

#sudo apt-get update
#sudo apt-get install zsh -y
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sed 's:env zsh -l::g' | sed 's:chsh -s .*$::g')"

cd
mv ~/.vim ~/.vim-old
mv ~/.vimrc ~/.vimrc.old
mv ~/.zshrc ~/.zshrc.old
mv ~/.tmux.conf ~/.tmux.conf.old
mv ~/.remote.tmux.conf ~/.remote.tmux.conf.old
ln -s ~/Git/randomtools/perfect-terminal/.vim ~/.vim
ln -s ~/Git/randomtools/perfect-terminal/.vimrc ~/.vimrc
ln -s ~/Git/randomtools/perfect-terminal/.zshrc ~/.zshrc
ln -s ~/Git/randomtools/perfect-terminal/.tmux.conf ~/.tmux.conf
ln -s ~/Git/randomtools/perfect-terminal/.remote.tmux.conf ~/.remote.tmux.conf

# Case-insensitive tab completion
if [ ! -a ~/.inputrc ]; then echo '$include /etc/inputrc' > ~/.inputrc; fi
echo 'set completion-ignore-case On' >> ~/.inputrc

# Remove trash can from desktop
gsettings set org.gnome.nautilus.desktop trash-icon-visible false

# Add our custom bashrc append
cat ~/Git/randomtools/perfect-terminal/append.bashrc >> ~/.bashrc

# Perfect GNOME dock
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
gsettings set org.gnome.shell.extensions.dash-to-dock autohide true
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
gsettings set org.gnome.shell.extensions.dash-to-dock multi-monitor true
