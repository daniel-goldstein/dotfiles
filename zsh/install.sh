#!/bin/zsh

ln -sf $(pwd)/zshrc ~/.zshrc
ln -sf $(pwd)/zprofile ~/.zprofile

# https://gist.github.com/jamesmacfie/2061023e5365e8b6bfbbc20792ac90f8
mkdir -p ~/Library/ApplicationSupport/iTerm2/Scripts/AutoLaunch
ln -sf $(pwd)/switch_color_theme.py ~/Library/ApplicationSupport/iTerm2/Scripts/AutoLaunch/switch_color_theme.py

source ~/.zshrc
