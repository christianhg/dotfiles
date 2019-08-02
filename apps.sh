#!/usr/bin/env bash

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install Homebrew-Cask
brew tap caskroom/cask
brew tap caskroom/versions
brew tap caskroom/fonts

brew cask install brave
brew cask install font-fira-code
brew cask install firefox
brew cask install flux
brew cask install google-chrome
brew cask install google-chrome-canary
brew cask install hyper
brew cask install istat-menus
brew cask install little-snitch
brew cask install postman
brew cask install spectacle
brew cask install visual-studio-code
brew cask install vlc

brew install node@10
brew install tree
brew install unrar
brew install wallpaper
brew install yarn

brew install zsh zsh-completions

# Remove outdated versions from the cellar.
brew cleanup

npm install --global npm
npm install --global http-server
npm install --global np
npm install --global trash-cli
npm install --global vsce
