set nocompatible

so ~/.vim/plugins.vim

syntax on
set number

let mapleader = ','
colorscheme atom-dark

if !has('gui_running')
  colorscheme atom-dark-256
  set t_Co=256
endif

set hlsearch
set incsearch
let NERDTreeHijackNetrw = 0


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

augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
