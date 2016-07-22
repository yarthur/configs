set nocompatible              " be iMproved, required


" load plugins from vundle
source ~/.config/nvim/plugins.vim






" Cribbed from https://gist.githubusercontent.com/benmccormick/4e4bc44d8135cfc43fc3/raw/41cb8709d72a56bf0be66d4294135c46613c312c/minimal.vim
" A minimal vimrc for new vim users to start with.
"
" Referenced here: http://vimuniversity.com/samples/your-first-vimrc-should-be-nearly-empty
"
" Original Author:	     Bram Moolenaar <Bram@vim.org>
" Made more minimal by:  Ben Orenstein
" Modified by :          Ben McCormick
" Last change:	         2014 June 8
"
" To use it, copy it to
"  for Unix based systems (including OSX and Linux):  ~/.vimrc
"  for Windows :  $VIM\_vimrc
"
"  If you don't understand a setting in here, just type ':h setting'.

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
" set nocompatible

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
" filetype plugin indent on

" Show line numbers
set number

" Show relative line numbers
set relativenumber

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

"""""""""""""""""""""
" Personal Settings "
"""""""""""""""""""""
" Save netrw history file to cache dir.
let g:netrw_home=$XDG_CACHE_HOME.'/vim'

" Enable Unicode
set encoding=utf-8

" Show whitespace
set list listchars=eol:¶,tab:→\ ,trail:·

" Use Spaces instead of Tabs
set expandtab

" Set Tab width to 4 space
set tabstop=4

" Launch .md file in Marked
nnoremap <leader>m :silent !open -a Marked.app '%:p'<cr>