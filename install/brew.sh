#!/bin/sh

#
# Install Brew packages.
#

binaries=(
  # Core Functionality
  git
  tmux
  # vim
  macvim --override-system-vim
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
  gcc
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

)

brew install ${binaries[@]}

#
# Cleanup
#
echo "cleaning up brew files..."
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*
