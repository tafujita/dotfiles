# Dotfiles

dotfiles for OSX environment

## Contents

+ zsh configuration
+ vim configuration
+ tmux configuration
+ git configuration
+ brew bins
+ brew-cask apps
+ pip packages
+ iterm2 configuration
+ iterm2 themes (base16)

## Install

1. `git clone https://github.com/tafujita/dotfiles.git ~/.dotfiles`
2. `cd ~/.dotfiles`
3. `./install.sh`
4. manually symlink oh-my-zsh `ln -s ~/.dotfiles/zsh/oh-my-zsh ~/.oh-my-zsh`
 

## Install Submodules

1. `cd ~/.dotfiles`
2. `git submodule init`
3. `git submodule update`


## Install Vim Plugins

1. `vim`
2. `:PluginInstall`


## iTerm2 Settings

1. open iTerm2 Application
2. open Preferences `cmd + ,`
3. in General Tab > Preferences > Load preferences from a custom folder: `~/Library/Preferences/`
3. in Profiles Tab select Zsh Profile
4. Color Tab > Load Presets... > import... > `base16-atelierheath.dark` & `base16-atelierheath.light`
5. Text Tab > Regular Font & Non-ASCII Font > `18pt Inconsolata for Powerline`
