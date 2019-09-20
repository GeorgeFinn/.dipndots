# .dipndots
Dip into my config files :)

## Initial Setup

1. Set up git bare repository with alias 'config' to interact with dotfile repository
```
git init --bare ~/.dipndots
alias config='/usr/bin/git --git-dir=~/.dipndots/ --work-tree=~/'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.dipndots/ --work-tree=$HOME'" >> ~/.bashrc
```

2. Add any .dot files 
```
config status
config add .vimrc
config commit -m "add vimrc"
config push
```

## Migration to new system
[Tutorial here](https://www.atlassian.com/git/tutorials/dotfiles)
