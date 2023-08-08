#!/usr/bin/env bash

cp .gitconfig ~
cp .gitignore ~
cp .hyper.js ~
cp .vimrc ~
mkdir ~/.config/sksd
cp ./.config/sksd/skhdrc ./config/sksd
mkdir ~/.config/yabai
cp ./.config/yabai/yabairc ./config/yabai

wallpaper set ./assets/wallpaper_mammoth.jpg
