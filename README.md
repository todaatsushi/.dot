TODO - Isn't robust to any workspace

Shout out https://www.atlassian.com/git/tutorials/dotfiles

```
git init --bare $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
```

See config for instructions

Current settings:

```
Neovim
tmux
```
