if has('vim_starting')
  if &compatible
    set nocompatible
  endif
  set runtimepath+=/home/jkl/.vim/bundle/neobundle.vim/ 
endif
call neobundle#begin(expand('/home/jkl/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'

NeoBundle 'scrooloose/nerdtree'	
NeoBundle 'bling/vim-airline'
NeoBundle 'altercation/vim-colors-solarized' 



NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
call neobundle#end()
filetype plugin indent on
NeoBundleCheck	
"-------------------------------------------------------------------------
set laststatus=2
filetype plugin indent on
set background=dark
colorscheme solarized
set t_Co=256
syntax on
let g:airline_theme='solarized'	
let g:airline_powerline_fonts = 0 
