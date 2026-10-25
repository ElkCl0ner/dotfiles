#!/bin/bash

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd -P)"

ln -s "$DOTFILES_DIR/.bash_aliases" "$HOME/.bash_aliases"
ln -s "$DOTFILES_DIR/.config/nvim" "$HOME/.config/nvim"

