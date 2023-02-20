# Dotfiles

This is my personal dotfiles repository. The files are managed with [chezmoi](https://www.chezmoi.io).


## Fresh install
1. Install [homebrew](https://brew.sh)
2. Install chezmoi with `brew install chezmoi`
3. Clone this repository with `chezmoi init https://github.com/JPaju/dotfiles.git`
4. Check what modifications will be made with `chezmoi diff` and apply them with `chezmoi apply -v`
5. Install brew packages with `brew bundle install --file ~/.config/brew/Brewfile`


## Sync local changes to remote
```bash
$ chezmoi cd
$ git add .
$ git commit -m <commit-message>
$ git push
```


## Update dotfiles with remote changes
Run `chezmoi update -v` to update the local dotfiles
