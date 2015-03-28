#!/bin/sh

# i started writing this in sh then in perl now in sh again because
# it's been a shitton of months since i wrote any long shell scripts

DOT_DIR=~/tmp/.dotfiles
VIM_DIR=~/tmp/.vim/bundle
BASEDIR=~/tmp/

# check for git and that we don't already have a dot_dir or a vim_dir
if type git; then : 
 else echo "error: where's git?"; exit 1; 
fi
# WHAT DOES MARCELLUS WALLACE LOOK LIKE? 
if [ -d $DOT_DIR ]; then echo "error: $DOT_DIR exists"; exit 1; fi
if [ -d $VIM_DIR ]; then echo "error: $VIM_DIR exists"; exit 1; fi
# WHAT? 
mkdir -p $DOT_DIR
mkdir -p $VIM_DIR
git clone https://github.com/docjkl/dotfiles.git $DOT_DIR
# WHAT COUNTRY YOU FROM? 
git clone https://github.com/Shougo/neobundle.vim.git $VIM_DIR/neobundle.vim
# wha-WHAT?

if [ -f $BASEDIR/.vimrc -a ! -h $BASEDIR/.vimrc ]; then
 mv $BASEDIR/.vimrc $BASEDIR/.vimrc.old 
 ln -s $DOT_DIR/vimrc $BASEDIR .vimrc
fi



