#!/bin/zsh

# tmux plugin manager
[ -d ~/dotfiles/tmux/tpm ] || git clone https://github.com/tmux-plugins/tpm ~/dotfiles/tmux/tpm

ln -sf ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
tmux source-file ~/.tmux.conf
