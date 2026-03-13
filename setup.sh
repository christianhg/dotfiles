#!/usr/bin/env bash

set -e

DOTFILES="$(cd "$(dirname "$0")" && pwd)"

echo "==> Installing Homebrew"
if ! command -v brew &>/dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

echo "==> Installing apps and tools"
brew update
brew bundle --file="$DOTFILES/Brewfile"

echo "==> Fixing zsh completion permissions"
chmod -R go-w "$(brew --prefix)/share"

echo "==> Setting up oh-my-zsh"
"$DOTFILES/zsh.sh"

echo "==> Linking configs"
"$DOTFILES/bootstrap.sh"

echo "==> Applying macOS preferences"
"$DOTFILES/.macos"

echo "==> Setting up yabai sudoers (for scripting addition)"
YABAI_BIN="$(which yabai)"
YABAI_HASH="$(shasum -a 256 "$YABAI_BIN" | cut -d " " -f 1)"
echo "$(whoami) ALL=(root) NOPASSWD: sha256:${YABAI_HASH} ${YABAI_BIN} --load-sa" | sudo tee /private/etc/sudoers.d/yabai

echo "==> Starting window management"
skhd --start-service
yabai --start-service

echo ""
echo "Done! Next steps:"
echo "  1. Restart your Mac for macOS preferences to take effect"
echo "  2. Restore ~/.ssh/id_rsa from your password vault"
echo "  3. Run: ssh-add --apple-use-keychain ~/.ssh/id_rsa"
echo "  4. Create ~/.zshrc.local with your secrets"
echo "  5. Grant Accessibility permissions to skhd and yabai"
echo "  6. Partially disable SIP for yabai (see yabai wiki)"
