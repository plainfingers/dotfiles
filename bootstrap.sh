#!/bin/bash
#----------------------------------------------------------------------------
# bootstrap script to install core tools
#----------------------------------------------------------------------------
cd ~
sudo pacman -S zsh grml-zsh-config

#----------------------------------------------------------------------------
# vim/pathogen and deps
#----------------------------------------------------------------------------
sudo pacman -S vim git ack ctags
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle/autoload
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
# fvwm, xorg, firefox, tmux, fonts, optional video drivers
#----------------------------------------------------------------------------
sudo pacman -S fvwm xorg-server xorg-server-utils xorg-xinit xterm firefox tmux
sudo pacman -S ttf-bitstream-vera ttf-anonymous-pro ttf-hack
#sudo pacman -S xf86-video-nouveau xf86-video-vesa xf86-video-fbdev

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