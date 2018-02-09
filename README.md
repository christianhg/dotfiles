# christianhg's dotfiles

## Set up ZSH

```
./zsh.sh
```

Update plugins:

```
plugins=( [plugins...] zsh-syntax-highlighting zsh-autosuggestions)
```

Update prompt:

```
autoload -U promptinit; promptinit
prompt pure
```

Refresh:

```
source ~/.zshrc
```

## Make Ruby usable

```
brew install rbenv
rbenv install 2.3.0
```

Add to .zshrc:

```
eval "$(rbenv init -)"
```
