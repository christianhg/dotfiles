# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""

plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# Completions
fpath+=("$(brew --prefix)/share/zsh/site-functions")

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

# Pure prompt
autoload -U promptinit; promptinit
prompt pure

LC_CTYPE=en_US.UTF-8

export CDPATH=.:~:~/code

# Node
export PATH="/opt/homebrew/opt/node@22/bin:$PATH"

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# bun
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH="$HOME/.local/bin:$PATH"

# Secrets (not tracked — add to ~/.zshrc.local)
[ -f "$HOME/.zshrc.local" ] && source "$HOME/.zshrc.local"
