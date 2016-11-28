set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

packadd! matchit

Plugin 'altercation/vim-colors-solarized'
Plugin 'airblade/vim-gitgutter'
" Plugin 'airblade/vim-rooter'
Plugin 'ap/vim-buftabline'
Plugin 'AndrewRadev/linediff.vim'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'benmills/vimux'
Plugin 'bling/vim-airline'
Plugin 'brookhong/cscope.vim'
Plugin 'bruno-/vim-vertical-move'
"Plugin 'christoomey/vim-tmux-navigator'
Plugin 'Chiel92/vim-autoformat'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'EinfachToll/DidYouMean'
" Plugin 'edsono/vim-matchit'
" Plugin 'ervandew/eclim'
" Plugin 'flazz/vim-colorschemes'
Plugin 'gregsexton/gitv'
Plugin 'haya14busa/incsearch.vim'
Plugin 'haya14busa/incsearch-fuzzy.vim'
" Plugin 'henrik/vim-indexed-search'
" Plugin 'javacomplete'
Plugin 'jeetsukumaran/vim-indentwise'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'joshdick/onedark.vim'
Plugin 'junegunn/vim-easy-align'
Plugin 'justinmk/vim-sneak'
Plugin 'kshenoy/vim-signature'
Plugin 'majutsushi/tagbar'
Plugin 'mbbill/undotree'
Plugin 'mhinz/vim-randomtag'
Plugin 'morhetz/gruvbox'
Plugin 'myint/syntastic-extras'
"Plugin 'Raimondi/delimitMate'
"Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'Shathur/yang.vim'
Plugin 'Shathur/YouCompleteMe'
Plugin 'terryma/vim-expand-region'
"Plugin 'terryma/vim-multiple-cursors'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'tomtom/quickfixsigns_vim'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-obsession'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'Valloric/ListToggle'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/TaskList.vim'
Plugin 'vim-scripts/Txtfmt-The-Vim-Highlighter'
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-utils/vim-g2'
Plugin 'vim-utils/vim-husk'
Plugin 'vim-utils/vim-interruptless'
Plugin 'vim-utils/vim-line'
Plugin 'vim-utils/vim-man'
Plugin 'wellle/targets.vim'
Plugin 'wesQ3/vim-windowswap'
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
set formatoptions+=j
set cursorline
set backspace=indent,eol
set showmatch
set matchtime=1
set tildeop
set lazyredraw
set makeprg=make
set splitright
set undofile
set undodir=~/.vim/undo"
set shortmess+=c
set backupskip=/tmp/*
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set wildmenu

syntax on
autocmd FileType yang setlocal shiftwidth=2 tabstop=2 commentstring=//%s
autocmd FileType xml setlocal shiftwidth=2 tabstop=2
autocmd FileType java setlocal makeprg=make
autocmd Filetype notes WP
autocmd Filetype cisco setlocal shiftwidth=1 tabstop=1 commentstring=!%s

if has ("autocmd")
    autocmd FocusLost,InsertEnter   * set norelativenumber
    autocmd FocusGained,InsertLeave * set relativenumber
endif

colorscheme gruvbox
set background=dark

" transparent background
" hi Normal ctermbg=none
" autocmd VimEnter,FocusGained * hi Normal guibg=none ctermbg=none

let mapleader=" "

nmap <leader>b :ls<CR>:b
nmap <leader>x :bd<CR>

let g:buftabline_numbers=1
let g:buftabline_indicators=1

nmap <leader>1 :buffer 1<CR>
nmap <leader>2 :buffer 2<CR>
nmap <leader>3 :buffer 3<CR>
nmap <leader>4 :buffer 4<CR>
nmap <leader>5 :buffer 5<CR>
nmap <leader>6 :buffer 6<CR>
nmap <leader>7 :buffer 7<CR>
nmap <leader>8 :buffer 8<CR>
nmap <leader>9 :buffer 9<CR>

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

" move between windows
nmap <C-H> <C-W>h
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l

let g:ctrlp_working_path_mode = '0'

map <F9> :Gst<CR>

nmap <F10> :set paste!<CR>

"cscope
nnoremap <leader>fa :call CscopeFindInteractive(expand('<cword>'))<CR>
nnoremap <leader>fl :call ToggleLocationList()<CR>
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
let g:easytags_events = ['BufWritePost', 'BufReadPost']

map <F3> :noh<CR>

set t_ut=

map <leader>r :GitGutterUndoHunk<CR>
map <leader>s :GitGutterStageHunk<CR>

let g:gitgutter_max_signs = 2000 " (default: 500)

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

let g:ycm_seed_identifiers_with_syntax = 1

let g:windowswap_map_keys = 0
nmap <leader>ww WindowSwap#EsayWindowSwap

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [], 'passive_filetypes': [] }

let g:syntastic_make_checkers = ['gnumake']
let g:syntastic_javascript_checkers = ['json_tool']
let g:syntastic_always_populate_loc_list = 1

let g:Gitv_OpenHorizontal = 1
let g:Gitv_TruncateCommitSubjects = 1
let g:Gitv_WrapLines = 0
let g:Gitv_OpenPreviewOnLaunch = 0
let g:Gitv_DoNotMapCtrlKey = 1

vmap [s <Plug>(expand_region_shrink)
vmap ]s <Plug>(expand_region_expand)

let g:quickfixsigns_classes = ['qfl', 'loc']

let g:tagbar_show_linenumbers = 2
let g:tagbar_type_yang = {
  \ 'ctagstype': 'yang',
  \ 'kinds' : [
      \'m:Modules',
      \'i:Imports',
      \'x:Includes',
      \'f:Features',
      \'y:Identities',
      \'a:Toptags',
      \'t:Types',
      \'g:Groupings',
      \'n:Notifications',
      \'r:RPCs',
      \'l:Lists',
  \]
\}
