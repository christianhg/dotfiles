#!/usr/bin/env bash

mkdir -p ~/code

cp .gitconfig ~
cp .gitignore ~

mkdir -p ~/.ssh
cp .ssh/config ~/.ssh/config
chmod 600 ~/.ssh/config
cp .vimrc ~
cp .zshrc ~
cp .tmux.conf ~

mkdir -p ~/.config/skhd
cp .config/skhd/skhdrc ~/.config/skhd

mkdir -p ~/.config/yabai
cp .config/yabai/yabairc ~/.config/yabai

mkdir -p ~/.config/ghostty
cp .config/ghostty/config ~/.config/ghostty

mkdir -p ~/.config/karabiner
cp .config/karabiner/karabiner.json ~/.config/karabiner

cp -R .config/nvim ~/.config/nvim

wallpaper set ./assets/wallpaper_mammoth.jpg
