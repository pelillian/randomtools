#!/usr/bin/env bash

source setup_common.sh

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "set completion-ignore-case On" >> ~/.inputrc
defaults write NSGlobalDomain KeyRepeat -int 1

