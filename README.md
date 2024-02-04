# .dotfiles

This repository contains the dotfiles for my system.

## Quick Start

1. Install `git` and [`stow`](https://www.gnu.org/software/stow/)
2. Clone this repository `git clone https://github.com/touchedthecode/.dotfiles`
3. Go to cloned directory `cd .dotfiles` and run `stow .`
4. Done!

If a dotfile already exists, you will need to resolve the stow conflicts by either

- moving or deleting the dotfile
- running `stow --adopt .` (be careful!)

Running `stow --adpot .` will override the repository dotfiles with the already existing dotfiles!
