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
Bundle 'wellle/targets.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'airblade/vim-gitgutter'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'benmills/vimux'
Plugin 'bling/vim-airline'
Plugin 'brookhong/cscope.vim'
Plugin 'bruno-/vim-vertical-move'
"Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'edsono/vim-matchit'
" Plugin 'flazz/vim-colorschemes'
Plugin 'haya14busa/incsearch.vim'
Plugin 'haya14busa/incsearch-fuzzy.vim'
Plugin 'jeetsukumaran/vim-indentwise'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'joshdick/onedark.vim'
Plugin 'junegunn/vim-easy-align'
Plugin 'justinmk/vim-sneak'
Plugin 'majutsushi/tagbar'
Plugin 'matze/vim-move'
Plugin 'mbbill/undotree'
Plugin 'morhetz/gruvbox'
"Plugin 'Raimondi/delimitMate'
"Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
"Plugin 'scrooloose/syntastic'
"Plugin 'terryma/vim-multiple-cursors'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-obsession'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/Txtfmt-The-Vim-Highlighter'
Plugin 'vim-utils/vim-g2'
Plugin 'vim-utils/vim-husk'
Plugin 'vim-utils/vim-interruptless'
Plugin 'vim-utils/vim-line'
Plugin 'vim-utils/vim-man'
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
Plugin 'dracula/vim'
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
set nobackup
set noswapfile
set formatoptions+=j
set cursorline

syntax on
autocmd FileType yang setlocal shiftwidth=2 tabstop=2 commentstring=//%s
autocmd FileType xml setlocal shiftwidth=2 tabstop=2
autocmd Filetype notes WP
autocmd Filetype cisco setlocal shiftwidth=1 tabstop=1 commentstring=!%s

if has ("autocmd")
    autocmd FocusLost,InsertEnter   * set norelativenumber
    autocmd FocusGained,InsertLeave * set relativenumber
endif

colorscheme gruvbox
set background=dark

let mapleader=" "

map <C-n> :NERDTreeTabsToggle<CR>
map <F2> :e $MYVIMRC<CR>

" replace word under cursor
nnoremap <Leader>R :%s/\<<C-r><C-w>\>/

"Remove all trailing whitespace by pressing F7
nnoremap <F7> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

set laststatus=2

let g:airline_powerline_fonts = 1

let g:airline#extensions#obsession#indicator_text = '✔'
let g:airline#extensions#wordcount#enabled = 1
let g:airline#extensions#wordcount#filetypes = '\vhelp|markdown|rst|org|text|asciidoc|notes'

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

" move lines
let g:move_map_keys = 0
vmap <leader>J <Plug>MoveBlockDown
vmap <leader>K <Plug>MoveBlockUp
nmap <leader>K <Plug>MoveLineUp
nmap <leader>J <Plug>MoveLineDown

" move between windows
nmap <C-H> <C-W>h
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l

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

map <F3> :noh<CR>

set t_ut=

map <leader>p :GitGutterPrevHunk<CR>
map <leader>n :GitGutterNextHunk<CR>
map <leader>r :GitGutterUndoHunk<CR>
map <leader>s :GitGutterStageHunk<CR>

" Follow symlinks when opening a file {{{

" NOTE: this happens with directory symlinks anyway (due to Vim's chdir/getcwd
"       magic when getting filenames).
" Sources:
"  - https://github.com/tpope/vim-fugitive/issues/147#issuecomment-7572351
"  - http://www.reddit.com/r/vim/comments/yhsn6/is_it_possible_to_work_around_the_symlink_bug/c5w91qw
function! MyFollowSymlink(...)
    if exists('w:no_resolve_symlink') && w:no_resolve_symlink
        return
    endif
    let fname = a:0 ? a:1 : expand('%')
    if fname =~ '^\w\+:/'
        " Do not mess with 'fugitive://' etc.
        return
    endif
    let fname = simplify(fname)

    let resolvedfile = resolve(fname)
    if resolvedfile == fname
        return
    endif
    let resolvedfile = fnameescape(resolvedfile)
    let sshm = &shm
    set shortmess+=A  " silence ATTENTION message about swap file (would get displayed twice)
    exec 'file ' . resolvedfile
    let &shm=sshm

    " Re-init fugitive.
    call fugitive#detect(resolvedfile)
    if &modifiable
        " Only display a note when editing a file, especially not for `:help`.
        redraw  " Redraw now, to avoid hit-enter prompt.
        echomsg 'Resolved symlink: =>' resolvedfile
    endif
endfunction
command! FollowSymlink call MyFollowSymlink()
command! ToggleFollowSymlink let w:no_resolve_symlink = !get(w:, 'no_resolve_symlink', 0) | echo "w:no_resolve_symlink =>" w:no_resolve_symlink
au BufReadPost * nested call MyFollowSymlink(expand('%'))

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap gz <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap gz <Plug>(EasyAlign)

func! WordProcessorMode()
  setlocal formatoptions=1
  setlocal noexpandtab
  setlocal norelativenumber
  nnoremap k gk
  nnoremap j gj
  nnoremap gk k
  nnoremap gj j
  setlocal spell spelllang=en,sv
  set thesaurus+=/home/elnystro/mthesaur.txt
  set thesaurus+=/home/elnystro/ordlista.txt
  set complete+=s
  set formatprg=par
  setlocal wrap
  setlocal linebreak
endfu
com! WP call WordProcessorMode()

hi link SneakPluginTarget Cursor

set listchars=eol:¬,tab:→\ ,trail:~,extends:>,precedes:<,space:•,nbsp:␣
