# christianhg's dotfiles

## New machine setup

### 1. Clone this repo

```
git clone https://github.com/christianhg/dotfiles.git ~/code/dotfiles
cd ~/code/dotfiles
```

### 2. Install apps and CLI tools

```
./apps.sh
```

### 3. Set up ZSH (oh-my-zsh, plugins, Pure prompt)

```
./zsh.sh
```

### 4. Copy configs and set wallpaper

```
./bootstrap.sh
```

### 5. Apply macOS preferences

```
./.macos
```

Requires restart to take full effect.

### 6. Set up secrets

Create `~/.zshrc.local` for API keys and machine-specific config:

```
export ANTHROPIC_API_KEY="..."
```

This file is sourced by `.zshrc` but not tracked in this repo.

### 7. Set up SSH keys

Restore `~/.ssh/id_rsa` from password vault, then add it to the keychain:

```
ssh-add --apple-use-keychain ~/.ssh/id_rsa
```

The SSH config is copied by `bootstrap.sh`.

### 8. Start window management services

```
skhd --start-service
yabai --start-service
```

macOS will prompt for Accessibility permissions — grant them in System Settings > Privacy & Security > Accessibility.

## What's included

- **Shell**: ZSH with oh-my-zsh, Pure prompt, syntax highlighting, autosuggestions
- **Terminal**: Ghostty (Atom Dark theme, JetBrainsMono Nerd Font)
- **Editor**: Neovim (LazyVim)
- **Multiplexer**: tmux
- **Window management**: yabai + skhd
- **Key remapping**: Karabiner-Elements
- **Git**: Global gitconfig and gitignore
- **macOS**: Sensible defaults, disable Apple Intelligence, Siri, Liquid Glass, window tiling
