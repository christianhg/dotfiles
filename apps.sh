#!/usr/bin/env bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install Homebrew-Cask
brew tap homebrew/cask
brew tap homebrew/cask-versions
brew tap homebrew/cask-fonts

brew install brave-browser
brew install docker
brew install font-fira-code
brew install firefox
brew install --cask flux
brew install google-chrome
brew install hyper
brew install istat-menus
brew install little-snitch
brew install postman
brew install spectacle
brew install visual-studio-code
brew install vlc
brew install homebrew/cask-fonts/font-jetbrains-mono

brew install node@14
brew install node@16
brew install wallpaper
brew install yarn
brew install pnpm

brew install zsh zsh-completions

# Remove outdated versions from the cellar.
brew cleanup

npm install --global npm
npm install --global trash-cli
npm install --global vsce
