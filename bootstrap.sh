#!/usr/bin/env bash

DOTFILES="$(cd "$(dirname "$0")" && pwd)"

link() {
  local src="$DOTFILES/$1"
  local dst="$HOME/$1"
  mkdir -p "$(dirname "$dst")"
  ln -sf "$src" "$dst"
  echo "Linked $dst -> $src"
}

mkdir -p ~/code

# Home directory
link .gitconfig
link .gitignore
link .vimrc
link .zshrc
link .zshenv
link .tmux.conf

# SSH (copy instead of symlink, needs strict permissions)
mkdir -p ~/.ssh
cp "$DOTFILES/.ssh/config" ~/.ssh/config
chmod 600 ~/.ssh/config

# Config directories
link .config/skhd/skhdrc
link .config/yabai/yabairc
link .config/ghostty/config
link .config/karabiner/karabiner.json

# Neovim (symlink the whole directory)
ln -sf "$DOTFILES/.config/nvim" "$HOME/.config/nvim"
echo "Linked ~/.config/nvim -> $DOTFILES/.config/nvim"

# Wallpaper
wallpaper set "$DOTFILES/assets/wallpaper_mammoth.jpg"
