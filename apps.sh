#!/usr/bin/env bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Make sure we're using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Apps
brew install --cask brave-browser
brew install --cask firefox
brew install --cask flux
brew install --cask ghostty
brew install --cask google-chrome
brew install --cask istat-menus
brew install --cask karabiner-elements
brew install --cask little-snitch
brew install --cask visual-studio-code
brew install --cask font-jetbrains-mono-nerd-font

# CLI tools
brew install gh
brew install httpie
brew install jq
brew install neovim
brew install ripgrep
brew install tmux
brew install wallpaper

# Window management
brew install koekeishiya/formulae/skhd
brew install koekeishiya/formulae/yabai

# Node / JS
brew install node@22
brew install pnpm

# Shell
brew install zsh zsh-completions zsh-syntax-highlighting zsh-autosuggestions
brew install pure

# Remove outdated versions from the cellar.
brew cleanup
