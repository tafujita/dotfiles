#!/bin/bash

echo "installing dotfiles"

# echo "initializing submodule(s)"
# git submodule update --init --recursive

source install/link.sh

if [ "$(uname)" == "Darwin" ]; then
	echo "running on OSX"
	# Install Fonts
	echo "installing powerline fonts..."
	source install/powerline_fonts/install.sh

	# Install Homebrew and update
	if test ! $(which brew); then
		echo "installing homebrew..."
		ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	fi

	echo "updating homebrew..."
	brew update

	echo "brewing all the things"
	source install/brew.sh

	echo "brew-cask all the things"
	source install/cask.sh

	# echo "pip all the package"
	# source install/pip.sh

#	echo "updating OSX settings"
#	source scripts/osx.sh

#	echo "installing node (from nvm)"
#	nvm install stable
#	nvm alias default stable

	echo "linking iTerm2 configuration..."
	rm ~/Library/Preferences/com.googlecode.iterm2.plist
	ln -s ~/.dotfiles/iterm2/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist

fi

echo ""
echo "ALL DONE!!"
echo ""

# echo "configuring zsh as default shell"
# chsh -s $(which zsh)
