#!/bin/bash

echo "installing latest chezmoi version"
#############################################
if ! command -v chezmoi &> /dev/null
then
    sh -c "$(curl -fsLS get.chezmoi.io)"
fi
#############################################v

echo "installing zsh"
#############################################
if command -v brew &> /dev/null
then
    brew install zsh
fi

if command -v apt &> /dev/null
then
    apt install zsh
fi
#############################################

echo "initializing ohmyzsh (zsh config manager)"
#############################################
if [[ ! -d "$HOME/.oh-my-zsh/" ]]; then
    bash -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
#############################################

echo "initializing chezmoi"
#############################################
bin/chezmoi init https://github.com/Haagy/dotfiles.git
#############################################