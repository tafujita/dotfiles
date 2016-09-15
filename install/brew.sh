#!/bin/sh


#
# Brew Tap
#

brew tap homebrew/science


#
# Install Brew packages.
#

binaries=(
  # Core Functionality
  git
  tmux
  reattach-to-user-namespace
  # vim
  macvim --override-system-vim
  emacs
  zsh
  bash
  homebrew/dupes/grep
  caskroom/cask/brew-cask

  # Library
  openssl
  coreutils
  findutils
  readline

  # Middle-ware
  mysql
  nginx
  sqlite
  postgresql
  node

  # Languages & Frameworks
  #gcc
  go
  python
  python3
  rbenv
  ruby-build
  leiningen

  # Utilities
  tree
  wget
  ffmpeg
  youtube-dl
  hub
  graphicsmagick
  heroku-toolbelt
  imagemagick

  # pip preparation
  pkg-config
  freetype
  libpng
)

brew install ${binaries[@]}


#
# Symlink for freetype
#

ln -s /usr/local/include/freetype2 /usr/local/include/freetype


#
# Cleanup
#
echo "cleaning up brew files..."
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*
