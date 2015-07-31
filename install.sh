#!/bin/bash

################################################################################
# This is most definitely WIP.
################################################################################

# variable used to create backup folder for old configs based on time the
# script is run
DATE=$(date '+%Y%m%d_%H%M');

DIR=$HOME/dotfiles
BACKUP_DIR=$HOME/dotfiles_bak_$DATE

mkdir $BACKUP_DIR

# go through symlink files to back-up and then symlink dotfiles into home folder
FILES=($(find $DIR -name "*.symlink"))
for dotfile in "${FILES[@]}"
do
	# http://stackoverflow.com/questions/965053/extract-filename-and-extension-in-bash
	full_filename=$(basename "$dotfile")

	# strip out "symlink" extension
	filename=".${full_filename%.*}"

	if [ -f "$HOME/$filename" ]; then
		echo "Found existing dotfile: $HOME/$filename"
		cp $HOME/$filename $BACKUP_DIR/
		rm -rf $HOME/$filename
	fi

	echo "Symlinking dotfile: $HOME/$filename -> $dotfile"
        ln -s $dotfile $HOME/$filename

done
