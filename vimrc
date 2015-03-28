"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif
  set runtimepath+=/home/jkl/.vim/bundle/neobundle.vim/ " required
endif
call neobundle#begin(expand('/home/jkl/.vim/bundle'))	" required
NeoBundleFetch 'Shougo/neobundle.vim'			" required

" BUNDLES
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'

NeoBundle 'scrooloose/nerdtree'				" file browser
NeoBundle 'bling/vim-airline'				" airline
NeoBundle 'altercation/vim-colors-solarized' 		" solarized



" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
call neobundle#end()					" required
filetype plugin indent on				" required
NeoBundleCheck						" required
"-------------------------------------------------------------------------
set laststatus=2
filetype plugin indent on
set background=dark
colorscheme solarized
set t_Co=256
syntax on
let g:airline_theme='solarized'	
let g:airline_powerline_fonts = 0 " TODO: patch font	
