syntax on

" Settings
set nocompatible
set shortmess+=I
set number
set expandtab
set relativenumber
set laststatus=2
set backspace=indent,eol,start
set hidden
set ignorecase
set smartcase
set incsearch
set expandtab
set cursorline
set showcmd
set nobackup
set shell=zsh
set smarttab
set wildmenu
set path+=**
set noerrorbells visualbell t_vb=
set mouse+=a

if has('nvim') || has('termguicolors')
  set termguicolors
  endif

" Keyboard mappings
nmap Q <Nop>
nnoremap <Left>  :echoe "Use h"<CR>>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

" Vundle plugins
set rtp+=~/.vim/bundle/Vundle.vim
filetype off
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'challenger-deep-theme/vim', {'name': 'challenger-deep-theme'}
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'scrooloose/nerdtree'
call vundle#end()        
filetype plugin indent on 

colorscheme challenger_deep

" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to

" autocmd VimEnter * NERDTree
autocmd BufNewFile,BufRead *.es6 setf javascript
autocmd BufNewFile,BufRead *.tsx setf typescript
autocmd BufNewFile,BufRead *.md set filetype=markdown
