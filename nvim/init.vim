call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox'

" Add plugins to &runtimepath
call plug#end()

set termguicolors
colorscheme gruvbox
set background=dark

let mapleader=' ' " space instead of \

command! Reload :source $MYVIMRC | noh
cabbrev R Reload

" disable Ex mode
nnoremap Q <nop>

nnoremap <leader>u :update<CR>

" move between windows
nmap <C-H> <C-W>h
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l

cab mm Man
cab vm Vman
cab makE make
cab RT RemoveTrailingSpaces
cab GGPH GitGutterPreviewHunk
cab HT HighlightTags

let g:terminal_color_0  = '#2e3436'
let g:terminal_color_1  = '#cc0000'
let g:terminal_color_2  = '#4e9a06'
let g:terminal_color_3  = '#c4a000'
let g:terminal_color_4  = '#3465a4'
let g:terminal_color_5  = '#75507b'
let g:terminal_color_6  = '#0b939b'
let g:terminal_color_7  = '#d3d7cf'
let g:terminal_color_8  = '#555753'
let g:terminal_color_9  = '#ef2929'
let g:terminal_color_10 = '#8ae234'
let g:terminal_color_11 = '#fce94f'
let g:terminal_color_12 = '#729fcf'
let g:terminal_color_13 = '#ad7fa8'
let g:terminal_color_14 = '#00f5e9'
let g:terminal_color_15 = '#eeeeec'
