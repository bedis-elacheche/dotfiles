#!/bin/bash

dir=dotfiles            # dotfiles directory
olddir=dotfiles_old     # old dotfiles backup directory
files="bashrc"    		# list of files/folders to symlink in homedir

# create dotfiles_old in homedir
echo "Creating ~/$olddir for backup of any existing dotfiles in ~"
mkdir -p ~/$olddir
echo "...done"

# change to the .dotfiles directory
echo "Changing to the ~/.$dir directory"
mv ~/$dir ~/.$dir
cd ~/.$dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory
for file in $files; do
    echo "Moving any existing dotfile from ~ to ~/$olddir"
    mv ~/.$file ~/$olddir/
    echo "Moving $file to home directory."
    mv ~/.$dir/$file ~/.$file
done

# remove install.sh
rm ~/.$dir/install.sh