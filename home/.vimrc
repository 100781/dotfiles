" Following lines added by drush vimrc-install on Sun, 29 Dec 2013 03:14:00 +0000.
set nocompatible
call pathogen#infect('/Users/bleen/.drush/vimrc/bundle/{}')
call pathogen#infect('/Users/bleen/.vim/bundle/{}')
" End of vimrc-install additions.

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Change mapleader
let mapleader=","

" Respect modeline in files
set modeline
set modelines=4
" Enable line numbers
set number
" Enable syntax highlighting
syntax on
" Highlight current line
"set cursorline
" Make tabs as wide as two spaces
set tabstop=2
" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd
" Start scrolling three lines before the horizontal window border
set scrolloff=3
" Enable filetype detection
filetype plugin on
"Complete longest string, then list alternatives
set wildmode=longest,list
"Toggle paste mode
set pastetoggle=<F2>
"Use Unix line endings
set fileformats=unix
"Number of commands to remember
set history=300
"Show matching brackets/parentheses
set showmatch
"Break lines when appropriate
set linebreak

"Set a central dir for vim swp files
set directory=~/.vim/swap,/tmp
"Set a central dir for backup files
set backupdir=~/.vim/backups,/tmp

" Persistent Undo (vim 7.3 and later)
if exists('&undofile') && !&undofile
  set undodir=~/.vim_runtime/undodir
  set undofile
endif
