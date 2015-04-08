# Dotfiles

dotfiles for OSX environment

## Contents

+ zsh configuration
+ vim configuration
+ tmux configuration
+ git configuration
+ Homebrew bins
+ Brew-cask apps
+ pip packages


## Install

1. `git clone https://github.com/tafujita/dotfiles.git ~/.dotfiles`
2. `cd ~/.dotfiles`
3. `./install.sh`
4. manually symlink oh-my-zsh `ln -s ~/.dotfiles/zsh/oh-my-zsh ~/.oh-my-zsh`

## iTerm2 Settings
1. open iTerm2 Application
2. open Preferences `cmd + ,`
3. in General Tab check "Load preferences from a custom folder or URL:"
4. Browse file (Dropbox in my case)
5. in Profiles Tab select Zsh Profile
6. Color Tab > Load Presets... > import... > "base16-atelierheath.dark" & "base16-atelierheath.light"
7. Text Tab > Regular Font & Non-ASCII Font > 17pt Inconsolata for Powerline
