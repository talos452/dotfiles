#!/bin/sh

# i started writing this in sh then in perl now in sh again because
# it's been a shitton of months since i wrote any long shell scripts

DOT_DIR=~/tmp/.dotfiles
VIM_DIR=~/tmp/.vim/bundle
BASEDIR=~/tmp/
DEBUGME=0
DRY_RUN=0
VERBOSE=0

# WHAT DOES MARCELLUS WALLACE LOOK LIKE? 
while getopts nv: opty
 do
  case $opty in
   d) DEBUGME=1;;
   n) DRY_RUN=1;;
   v) VERBOSE=1;;
   ?) printf "usage: %s: [-dnv] $0"
       exit 76;; # i think this is right but i need to check sysexits.h
 esac
done
# WHAT? 
if type git; then : 
 else echo "error: where's git?"; exit 1; 
fi
if [ -d $DOT_DIR ]; then echo "error: $DOT_DIR exists"; exit 1; fi
# WHAT COUNTRY YOU FROM? 
if [ -d $VIM_DIR ]; then echo "error: $VIM_DIR exists"; exit 1; fi
mkdir -p $DOT_DIR
mkdir -p $VIM_DIR
git clone https://github.com/docjkl/dotfiles.git $DOT_DIR
git clone https://github.com/Shougo/neobundle.vim.git $VIM_DIR/neobundle.vim
# wha-WHAT?

# test opty option vars against -n for 'nonzero size' 
#if [ -f $BASEDIR/.vimrc -a ! -h $BASEDIR/.vimrc ]; then
# mv $BASEDIR/.vimrc $BASEDIR/.vimrc.old 
# ln -s $DOT_DIR/vimrc $BASEDIR .vimrc
#fi



