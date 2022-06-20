# christianhg's dotfiles

## Set up ZSH

```
./zsh.sh
```

Update plugins:

```
plugins=(git jira zsh-syntax-highlighting zsh-autosuggestions)
```

Update prompt:

```
autoload -U promptinit; promptinit
prompt pure
```

Fix ZSH autocompletion issue (see https://github.com/robbyrussell/oh-my-zsh/issues/5157#issuecomment-226031519):

```
LC_CTYPE=en_US.UTF-8
```

Make `~/code` the default path:

```
export CDPATH=.:~:~/code
```

Add `grep` alias:

```
alias grep='grep --text --ignore-case --color --exclude-dir={.svn,.git,.hg,CVS}'
```

* `--text`: treats all files as text files, even the ones that have headers that make them (look like) binary (like .class)
* `--ignore-case`: you seldom care about the case of the search hits
- --color: use colour to decorate search hits and line numbers
- --exclude-dir: exclude hits inside irrelevant directories

Refresh:

```
source ~/.zshrc
```

## Make Ruby usable

Reference: https://github.com/rbenv/rbenv/issues/938#issuecomment-285342541

```
brew install rbenv
rbenv install 2.3.0
rbenv global 2.3.0
```

Add to .zshrc:

```
eval "$(rbenv init -)"
```
