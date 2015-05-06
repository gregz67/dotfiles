set nocompatible
set encoding=utf-8
set backspace=indent,eol,start

" appearance
syntax on
colorscheme default
set ruler
set showcmd
set incsearch
set background=dark
set ruler
set numberwidth=5
set visualbell
set wildmenu " shows possible completions above command line
set list listchars=tab:\ \ ,trail:· " Display tabs and trailing spaces
set number
set showtabline=2
let loaded_matchparen=1 " turn off match paren highlighting

" saving
set noswapfile
set nobackup
set nowb

" indentation
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
au FileType ruby    set expandtab tabstop=2 softtabstop=2 shiftwidth=2
au FileType python  set expandtab tabstop=2 softtabstop=2 shiftwidth=2
au FileType html    set expandtab tabstop=2 softtabstop=2 shiftwidth=2
au FileType javasript    set expandtab tabstop=2 softtabstop=2 shiftwidth=2
au FileType go      set expandtab tabstop=4 softtabstop=4 shiftwidth=4

" mapping
" unset last search pattern by hitting space
nnoremap <space> :noh<CR>l

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
au!

" For all text files set 'textwidth' to 78 characters.
autocmd FileType text setlocal textwidth=78

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

augroup END

" Drupal *.module and *.install files.
augroup module
  autocmd BufRead,BufNewFile *.module set filetype=php
  autocmd BufRead,BufNewFile *.install set filetype=php
augroup END

" Actionscript
autocmd BufRead,BufNewFile *.as set filetype=actionscript

" Gradle
autocmd BufRead,BufNewFile *.gradle set filetype=groovy
