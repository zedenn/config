#!/bin/bash

# VARIABLES
# =========

dotfiles_dir=$HOME/.config
repo_dir=$HOME/config

# REMOVE EXISTING DOTFILES
# ========================

sudo rm $HOME/.bashrc > /dev/null
sudo rm $dotfiles_dir/sway/config
sudo rm $dotfiles_dir/waybar/config
sudo rm $dotfiles_dir/waybar/style.css
sudo rm $dotfiles_dir/foot/foot.ini

# CREATE HARD LINKS FOR DOTFILES
# =============================

sudo ln $repo_dir/.bashrc $HOME/.bashrc
sudo ln $repo_dir/sway/config $dotfiles_dir/sway/config
sudo ln $repo_dir/waybar/config $dotfiles_dir/waybar/config
sudo ln $repo_dir/waybar/style.css $dotfiles_dir/waybar/style.css
sudo ln $repo_dir/foot/foot.ini $dotfiles_dir/foot/foot.ini

# INSTALL FONTS
# ============
sudo pacman -S ttf-overpass
sudo pacman -S ttf-ubuntu-mono-nerd
sudo pacman -S ttf-font-awesome
