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

## Set up scripts

Insert the following into `~/.log-work-on-jira-issue.conf`:

```
jira_url=https://cci-jira.ccieurope.com
jira_user=
jira_password=
```
