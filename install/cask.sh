#!/bin/sh
# Homebrew-cask app install

#
# Install Brew-cask packages.
#

# can treat another Java versions
echo "tapping caskroom/versions..."
brew tap caskroom/versions

apps=(
  # Terminal & Text Editor
  iterm2
  atom
  eclipse-java

  # Cloud Disk
  dropbox
  google-drive

  # Utilities
  1password
  alfred
  caffeine
  xquartz  # required for some pip
  mamp
  mysqlworkbench
  soundflower
  adobe-reader
  dash

  # Languages
  arduino
  processing
  java
  java6 # required for Arduino

  # VM
  parallels-desktop
  virtualbox

  # Browser
  google-chrome
  firefox
  torbrowser
  flash

  # Media
  skype
  vlc
  handbrake
  camtasia
  # libreoffice
  spotify

  # Graphics / Music
  sketchup
  pd-extended
  # cycling74-max # version 7 is available online
  audacity
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}


#
# Link Cask Apps to Alfred
#
# brew cask alfred link # Does not work for free version
# No need for Alfred 2.6 >


#
# Cleanup
#
echo "cleaning up brew files..."
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*
