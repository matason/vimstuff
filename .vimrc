" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer: matason
" Contact: hello@webgoodness.co.uk
" Info: This is my .vimrc file.
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use vim defaults.
set nocompatible

" Set filetype detection on, load plugins and indent.
filetype plugin indent on

" Remove toolbar in mvim.
syntax enable " Syntax highlighting on.

if has("gui_running")
  set guioptions-=T
  set guitablabel=%t
  set cursorline " Highlight current line.
  set background=light
  colorscheme tomorrow
else
  colorscheme default
endif

" Tabs, Spaces and Indentation.
set expandtab " Use spaces for tabs.
set tabstop=2 " Number of spaces to use for tabs.
set shiftwidth=2 " Number of spaces to autoindent.
set softtabstop=2 " Number of spaces for a tab.
set autoindent " Set autoindenting on.

" Various.
set bs=2 " Backspace, this is the same as :set backspace=indent,eol,start.
set ruler " Show the cursor position.
set scrolloff=5 " Show 5 lines above/below the cursor when scrolling.
set number " Line numbers on.
set showcmd " Shows the command in the last line of the screen.
set autoread " Read files when they've been changed outside of Vim.
set hidden " Hide a buffer when it's abandoned.
set history=10000 " Number of command lines stored in the history tables.
set list
set textwidth=80
set report=0

" Bells and whistles.
set novisualbell
set noerrorbells
set t_vb=

" Use matchtime and showmatch together.
set matchtime=2 " Time to show matching parent in 10ths of a sec.
set showmatch " Show matching parents.

" Backup.
set nobackup " Don't backup files.
set nowritebackup
set noswapfile

" Searching.
set hlsearch
"set incsearch
set ignorecase
set smartcase

set wildmode=longest,list " File and directory matching mode.

" Diff opt
set diffopt=vertical

" Drupal command group, set the correct filetypes for Drupal files.
augroup drupal
  autocmd BufRead,BufNewFile *.module set filetype=php
  autocmd BufRead,BufNewFile *.theme set filetype=php
  autocmd BufRead,BufNewFile *.inc set filetype=php
  autocmd BufRead,BufNewFile *.install set filetype=php
  autocmd BufRead,BufNewFile *.info set filetype=php
  autocmd BufRead,BufNewFile *.engine set filetype=php
  autocmd BufRead,BufNewFile *.profile set filetype=php
  autocmd BufRead,BufNewFile *.test set filetype=php
augroup END

" Prevent help popping up catch <F1> instead of <ESC>.
:nmap <F1> <ESC>
:map <F1> <ESC>
:imap <F1> <ESC>

" Map keys to navigate tabs
:map <C-Left> :tabprevious<CR>
:map <C-Right> :tabnext<CR>

let mapleader=","

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
nmap <silent> <leader>w :call StripTrailingWhitespaces()<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

function! StripTrailingWhitespaces()
  let _s=@/
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  let @/=_s
  call cursor(l, c)
endfunction
