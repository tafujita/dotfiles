#!/bin/bash

DOTFILES=$HOME/.dotfiles

echo "creating symlinks"
linkables=$( ls -1 -d **/*.symlink )
for file in $linkables ; do
	target="$HOME/.$( basename $file ".symlink" )"
	echo "target is $target"
	echo "creating symlink for $file"
	ln -s $DOTFILES/$file $target
done
