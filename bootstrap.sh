#!/bin/bash
#----------------------------------------------------------------------------
# bootstrap script to install core tools
#----------------------------------------------------------------------------
cd ~
sudo pacman -S zsh grml-zsh-config linux-headers dialog wpa_supplicant openssh

#----------------------------------------------------------------------------
# vim/pathogen and deps
#----------------------------------------------------------------------------
sudo pacman -S vim git ack ctags
touch .vimpassrc
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle
git clone https://github.com/mileszs/ack.vim.git ack.vim
git clone https://github.com/plainfingers/black_is_the_color.git black_is_the_color
git clone https://github.com/kien/ctrlp.vim ctrlp.vim
git clone https://github.com/scrooloose/nerdcommenter.git nerdcommenter
git clone https://github.com/scrooloose/nerdtree.git nerdtree
git clone https://github.com/tpope/vim-fugitive vim-fugitive
git clone https://github.com/vim-ruby/vim-ruby vim-ruby
git clone https://github.com/tpope/vim-rails vim-rails
git clone https://github.com/jgdavey/vim-blockle vim-blockle
cd ~

#----------------------------------------------------------------------------
# desktop/x
#----------------------------------------------------------------------------
sudo pacman -S xorg-server xorg-server-utils xorg-xinit
sudo pacman -S xterm tmux rxvt-unicode urxvt-perls
sudo pacman -S fvwm i3-wm i3status i3lock dmenu xdg-utils
sudo pacman -S firefox
sudo pacman -S ttf-bitstream-vera ttf-anonymous-pro ttf-hack
sudo pacman -S pass   # cli password manager that is awesome

#----------------------------------------------------------------------------
# link dotfiles
#----------------------------------------------------------------------------
ln -s ~/dotfiles/vimrc .vimrc
ln -s ~/dotfiles/ctags .ctags
ln -s ~/dotfiles/ackrc .ackrc
ln -s ~/dotfiles/xinitrc .xinitrc
ln -s ~/dotfiles/Xmodmap .Xmodmap
ln -s ~/dotfiles/fvwm .fvwm
ln -s ~/dotfiles/fvwm/fvwm2rc .fvwm2rc
ln -s ~/dotfiles/vimperatorrc .vimperatorrc
ln -s ~/dotfiles/tmux.conf .tmux.conf
ln -s ~/dotfiles/i3 .i3
ln -s ~/dotfiles/Xdefaults.urxvt .Xdefaults

# netctl
# if already running
# sudo ip link set ens9 down
# sudo netctl start ehternet
