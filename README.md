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

## Updating .dot files

1. Clone dotfiles into bare repository in .dipndots folder of $HOME
```
git clone --bare git@github.com:GeorgeFinn/.dipndots.git $HOME/.dipndots
```
2. Define alias in current shell scope
```
alias config='/usr/bin/git --git-dir=$HOME/.dipndots/ --work-tree=$HOME'
```
3. Checkout actual content from bare repository
```
config checkout
```

## Migration to new system
[Tutorial here](https://www.atlassian.com/git/tutorials/dotfiles)
