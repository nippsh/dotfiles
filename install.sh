#!/bin/bash

create_link() {
	source=$1
	target=$2
	ln -sfn $source $target
	if [ $? -eq 0 ]; then
		echo "Added link $source -> $target"
	else
		echo "Error adding link $source -> $target"
	fi
}

# zsh
create_link $HOME/.dotfiles/.zshrc $HOME/.zshrc

# powerlevel10k
create_link $HOME/.dotfiles/.p10k.zsh $HOME/.p10k.zsh

# nvim
create_link $HOME/.dotfiles/.config/nvim $HOME/.config
