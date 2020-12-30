set nocompatible

so ~/.vim/plugins.vim

syntax on
set number
colorscheme atom-dark

let mapleader = ','

if !has('gui_running')
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
