# christianhg's dotfiles

## New machine setup

### 1. Clone this repo

```
git clone https://github.com/christianhg/dotfiles.git ~/code/dotfiles
cd ~/code/dotfiles
```

### 2. Run setup

```
./setup.sh
```

This will:
- Install Homebrew and all apps/tools (from `Brewfile`)
- Set up oh-my-zsh with plugins
- Symlink all configs to the home directory
- Apply macOS preferences
- Start yabai and skhd

### 3. Manual steps after restart

Restore `~/.ssh/id_rsa` from password vault, then add it to the keychain:

```
ssh-add --apple-use-keychain ~/.ssh/id_rsa
```

Create `~/.zshrc.local` for API keys and machine-specific config:

```
export ANTHROPIC_API_KEY="..."
```

Grant Accessibility permissions to skhd and yabai in System Settings > Privacy & Security > Accessibility.

## What's included

- **Shell**: ZSH with oh-my-zsh, Pure prompt, syntax highlighting, autosuggestions
- **Terminal**: Ghostty (Atom Dark theme, JetBrainsMono Nerd Font)
- **Editor**: Neovim (LazyVim)
- **Multiplexer**: tmux
- **Window management**: yabai + skhd
- **Key remapping**: Karabiner-Elements
- **Git**: Global gitconfig and gitignore
- **macOS**: Sensible defaults, disable Apple Intelligence, Siri, Liquid Glass, window tiling

## Updating

After changing configs, they're already live (symlinked). To update Homebrew packages:

```
brew bundle --file=~/code/dotfiles/Brewfile
```

To capture what's currently installed:

```
brew bundle dump --file=~/code/dotfiles/Brewfile --force
```
