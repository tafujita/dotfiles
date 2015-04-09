#!/bin/bash

# Set source and target directories
powerline_fonts_dir=$( cd "$( dirname "$0" )" && pwd )

find_command="find \"$powerline_fonts_dir\" \( -name '*.[o,t]tf' -or -name '*.pcf.gz' \) -type f -print0"

if [[ `uname` == 'Darwin' ]]; then
  # MacOS
  font_dir="$HOME/Library/Fonts"
else
  # Linux
  font_dir="$HOME/.fonts"
  mkdir -p $font_dir
fi


# Check if all fonts already exist
check_fonts="$font_dir/*Powerline*"
echo "checking fonts if already exit..."
if ls $check_fonts 1> /dev/null 2>&1; then
	echo "file exist skipping installation..."
else
	echo "installing fonts..."
	# If not exits
	# Copy all fonts to user fonts directory
	eval $find_command | xargs -0 -I % cp "%" "$font_dir/"

	# Reset font cache on Linux
	if [[ -n `which fc-cache` ]]; then
		fc-cache -f $font_dir
	fi

	echo "All Powerline fonts installed to $font_dir"
fi
