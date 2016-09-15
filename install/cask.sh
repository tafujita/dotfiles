#!/bin/sh
# Homebrew-cask app install

#
# Install Brew-cask packages.
#

# can treat another Java versions

# add support for fonts
brew tap caskroom/fonts

#add dev/beta versions
brew tap caskroom/versions

apps=(
  # Fonts
  font-source-code-pro

  # Terminal & Text Editor
  iterm2-beta
  sublime-text
  # atom
  # eclipse-java
  # emacs

  # Cloud Disk
  dropbox
  google-drive

  # Utilities
  1password
  alfred
  caffeine
  spectacle # window resizing manager
  # evernote
  xquartz  # required for some pip
  yujitach-menumeters
#  mamp
  soundflower
  adobe-reader
  # vagrant

  # Languages
  arduino
  processing
  java
  java6 # required for Arduino

  # Database 
  mysqlworkbench
  sequel-pro
  postgres
  pgadmin3

  # VM
  parallels-desktop
  # virtualbox

  # Browser
  google-chrome
  firefox
  torbrowser
  flash

  # Media
  skype
  spotify
  vlc
  handbrake
  # camtasia
  # libreoffice

  # Graphics / Music
  sketch
  sketchup
  # pd-extended
  #cycling74-max # version 7 is available online
  audacity
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
# brew cask install --appdir="/Applications" ${apps[@]}
brew cask install ${apps[@]}

#
# Link Cask Apps to Alfred
#
# brew cask alfred link # Does not work for free version
# No need for Alfred 2.6 >


#
# Cleanup
#
echo "cleaning up cached downloads..."
brew cleanup
brew cask cleanup
