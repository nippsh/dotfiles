#!/bin/bash

# zsh
ln -sf $HOME/.dotfiles/.zshrc $HOME/.zshrc

# powerlevel10k
ln -sf $HOME/.dotfiles/.p10k.zsh $HOME/.p10k.zsh

# nvim
mkdir -p $HOME/.config/nvim/
ln -sf $HOME/.dotfiles/.config/nvim/init.vim $HOME/.config/nvim/init.vim
