"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=/home/jkl/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/home/jkl/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'		" required

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'scrooloose/nerdtree'			" file browser
NeoBundle 'bling/vim-airline'			" airline
NeoBundle 'altercation/vim-colors-solarized' 	" solarized

"
" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

set laststatus=2
filetype plugin indent on
set background=dark
colorscheme solarized
set t_Co=256
syntax on
let g:airline_theme='solarized'
let g:airline_powerline_fonts = 0
