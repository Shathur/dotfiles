#!/bin/bash
############################
# makesymlinks.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/stash/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="bashrc vimrc ctags gitconfig gitignore_global bash_aliases tmux.conf vimperatorrc zshrc vim tmuxinator"

##########

# create dotfiles_old in homedir
mkdir -p $olddir

# change to the dotfiles directory
cd $dir

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
    mv ~/.$file ~/dotfiles_old/ 2>/dev/null
    ln -s $dir/$file ~/.$file
done

ln -s $dir/nvim ~/.config/nvim
