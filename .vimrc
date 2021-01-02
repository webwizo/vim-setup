set nocompatible

let mapleader = ','				" Remap Vim Leader Key
let g:mapleader = ","			" Remap Vim Leader Key

"---------- Includes ----------"
so ~/.vim/plugins.vim
so ~/.vim/keymappings.vim


"---------- Default Settings ----------"
syntax on
set number
set hlsearch
set incsearch
set tabstop=4					" a tab is four spaces
set smarttab
set softtabstop=4				" when hitting <BS>, pretend like a tab is removed, even if spaces
set visualbell           		" don't beep
set noerrorbells         		" don't beep
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindentingo
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase,

"---------- VISUALS ----------"
colorscheme atom-dark

if !has('gui_running')
  colorscheme atom-dark-256
  set t_Co=256
endif


"---------- NERDTree Defaults ----------"
let NERDTreeHijackNetrw = 0


"---------- Lightline Defaults ----------"
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }


"---------- AUTO-SOURCING ----------"
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END


