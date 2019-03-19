syntax on
set number
set cindent
set autoindent
set shiftwidth=4
set tabstop=4
set hlsearch
set incsearch
set nobackup
set backspace=eol,indent,start
set statusline=%<%f%h%m%r%=%c%V\ %l/%L\ 0x%B
set showcmd
set tags+=${HOME}/Downloads/tags/**/tags
"set cursorline
"au WinEnter * setlocal cursorline
"au WinLeave * setlocal nocursorline

let mapleader = ","
noremap \ ,

map  dwwP
nnoremap Y y$
nnoremap tn :tabnew 
nnoremap tc :tabclose<CR>
nnoremap tl :tabnext<CR>
nnoremap th :tabprev<CR>
noremap j gj
noremap k gk
noremap gj j
noremap gk k
nnoremap va `[v`]
noremap mh `[
noremap ml `]
" nnoremap <C-h> hx
nnoremap <C-n> <C-e>
nnoremap <C-p> <C-y>
nnoremap <Space><Space> i<Space><ESC>l
inoremap <C-b> <Left>
inoremap <C-f> <Right>
" inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <C-a> <Home>
inoremap <C-e> <End>

cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-a> <Home>
cnoremap <C-d> <Del>
cnoremap <C-j> <CR>
" map 11 i#!/bin/sh:set filetype=sh

nnoremap <silent> <leader>E :TlistToggle<CR>

" Quickfix
nnoremap <C-c><C-c> :copen<CR>
nnoremap <C-c><C-n> :cnext<CR>
nnoremap <C-c><C-p> :cprevious<CR>
nnoremap <C-c>N :cnfile<CR>
nnoremap <C-c>P :cpfile<CR>

" set enc=utf-8
" set fenc=utf-8
" set fencs=iso-2022-jp,euc-jp,cp932


augroup Binary
  au!
  au BufReadPre  *.bin let &bin=1
  au BufReadPost *.bin if &bin | silent %!xxd -g 1
  au BufReadPost *.bin set ft=xxd | endif
  au BufWritePre *.bin if &bin | %!xxd -r
  au BufWritePre *.bin endif
  au BufWritePost *.bin if &bin | silent %!xxd -g 1
  au BufWritePost *.bin set nomod | endif
augroup END
 

filetype indent plugin on


au FileType c source ${HOME}/.vim/after/ftplugin/c.vim
au FileType cpp source ${HOME}/.vim/after/ftplugin/cpp.vim
au FileType javascript source ${HOME}/.vim/after/ftplugin/javascript.vim
au FileType php source ${HOME}/.vim/after/ftplugin/php.vim
au FileType python source ${HOME}/.vim/after/ftplugin/python.vim
au FileType ruby source ${HOME}/.vim/after/ftplugin/ruby.vim
au FileType sh source ${HOME}/.vim/after/ftplugin/sh.vim
au FileType smarty source ${HOME}/.vim/after/ftplugin/smarty.vim
au FileType vim source ${HOME}/.vim/after/ftplugin/vim.vim
au FileType xml source ${HOME}/.vim/after/ftplugin/xml.vim
au FileType zsh source ${HOME}/.vim/after/ftplugin/zsh.vim
