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
brew cask install transmission
brew cask install visual-studio-code
brew cask install vlc

brew install node
brew install tree
brew install yarn

brew install zsh zsh-completions

# Remove outdated versions from the cellar.
brew cleanup

npm install --global pure-prompt
npm install --global np
npm install --global trash-cli

# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# plugins=( [plugins...] zsh-syntax-highlighting zsh-autosuggestions)

# File: .zshrc
# autoload -U promptinit; promptinit
# prompt pure

# source ~/.zshrc
