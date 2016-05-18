set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Bundle 'nathanalderson/yang.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'benmills/vimux'
Plugin 'bling/vim-airline'
Plugin 'brookhong/cscope.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'edsono/vim-matchit'
Plugin 'flazz/vim-colorschemes'
Plugin 'haya14busa/incsearch.vim'
Plugin 'haya14busa/incsearch-fuzzy.vim'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'joshdick/onedark.vim'
Plugin 'majutsushi/tagbar'
Plugin 'matze/vim-move'
"Plugin 'Raimondi/delimitMate'
"Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
"Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe'
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
"Plugin 'kana/vim-metarw'
"Plugin 'mattn/vim-metarw-gdrive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set number
set ruler
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set autoindent smartindent
set hidden
set incsearch
set ignorecase smartcase
set showcmd

syntax on
autocmd FileType yang setlocal shiftwidth=2 tabstop=2
autocmd FileType xml setlocal shiftwidth=2 tabstop=2

if has ("autocmd")
    "autocmd vimenter * NERDTree | wincmd p
    "autocmd BufNewFile * if &filetype == "" | set filetype=txt | endif
    autocmd FocusLost,InsertEnter   * set norelativenumber
    autocmd FocusGained,InsertLeave * set relativenumber
endif

colorscheme onedark

let mapleader=" "

map <C-n> :NERDTreeTabsToggle<CR>
map <F2> :e $MYVIMRC<CR>

" replace word under cursor
nnoremap <Leader>r :%s/\<<C-r><C-w>\>/

"Remove all trailing whitespace by pressing F7
nnoremap <F7> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

set laststatus=2

" enable airline tabs
let g:airline#extensions#tabline#enabled = 1

" only show file name
let g:airline#extensions#tabline#fnamemod = ':t'

" show their index (not necessarily the same as buffer number)
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>h <Plug>AirlineSelectPrevTab
nmap <leader>l <Plug>AirlineSelectNextTab

" To open a new empty buffer
nmap <leader>t :enew<cr>
nmap <leader>T :new<cr>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>q :bp <BAR> bd #<CR>

nmap <F8> :TagbarToggle<CR>

" disable Ex mode
nnoremap Q <nop>

nnoremap <leader>u :update<CR>

" toggle vertical bar at 80 chars
function! g:ToggleColorColumn()
    if &colorcolumn != ''
        setlocal colorcolumn&
    else
        setlocal colorcolumn=80
    endif
endfunction

nnoremap <silent> <F6> :call g:ToggleColorColumn()<CR>

"let g:delimitMate_expand_cr = 2

let g:move_map_keys = 0

" vmap <C-j> <Plug>MoveBlockDown
" vmap <C-k> <Plug>MoveBlockUp
" nmap <C-j> <Plug>MoveLineDown
" nmap <C-k> <Plug>MoveLineUp

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

nmap <leader>x A;<Esc>

let g:ctrlp_working_path_mode = '0'

map <F9> :Gst<CR>

nmap <F10> :set paste!<CR>

"cscope
nnoremap <leader>fa :call CscopeFindInteractive(expand('<cword>'))<CR>
nnoremap <leader>l :call ToggleLocationList()<CR>
let g:cscope_silent = 1

"EasyMotion
let g:EasyMotion_do_mapping = 0
nmap <leader><leader>f <Plug>(easymotion-overwin-f)
nmap <leader><leader>F <Plug>(easymotion-overwin-f2)
nmap <leader><leader>l <Plug>(easymotion-overwin-line)
nmap <leader><leader>w <Plug>(easymotion-overwin-w)

let g:EasyMotion_smartcase = 1
let g:EasyMotion_keys = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'
let g:EasyMotion_prompt = '{n}> '

map  <leader>/ <Plug>(easymotion-sn)
omap <leader>/ <Plug>(easymotion-tn)

"Incsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" :h g:incsearch#auto_nohlsearch
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

"Incsearch fuzzy
map z/ <Plug>(incsearch-fuzzy-/)
map z? <Plug>(incsearch-fuzzy-?)
map zg/ <Plug>(incsearch-fuzzy-stay)

map <F4> :UpdateTags<CR>
map <F5> :HighlightTags<CR>

set cpoptions+="d"
set tags=./tags
let g:easytags_dynamic_files = 2

map <F3> :set hlsearch!<CR>
