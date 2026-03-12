# christianhg's dotfiles

## Setup

Install apps and CLI tools:

```
./apps.sh
```

Set up ZSH:

```
./zsh.sh
```

Bootstrap configs and wallpaper:

```
./bootstrap.sh
```

## What's included

- **Shell**: ZSH with oh-my-zsh, Pure prompt, syntax highlighting, autosuggestions
- **Terminal**: Ghostty (Atom Dark theme, JetBrainsMono Nerd Font)
- **Editor**: Neovim (LazyVim)
- **Multiplexer**: tmux
- **Window management**: yabai + skhd
- **Key remapping**: Karabiner-Elements
- **Git**: Global gitconfig and gitignore

## Secrets

Machine-specific secrets (API keys, etc.) go in `~/.zshrc.local`, which is sourced by `.zshrc` but not tracked in this repo.

## SSH keys

Add to `~/.ssh/config`:

```
Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_rsa
```
