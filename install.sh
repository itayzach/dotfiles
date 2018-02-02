#!/bin/bash

# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="gitconfig  bashrc inputrc bash_aliases  vim_runtime"
##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
echo "Moving any existing dotfiles from ~ to $olddir"
for file in $files; do
    mv ~/.$file ~/dotfiles_old/ 2> /dev/null
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

# install awesome vimrc (thanks to amix)
echo "Installing awesome vimrc"
sh ~/.vim_runtime/install_awesome_vimrc.sh
echo "...done"
