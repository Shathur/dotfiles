call plug#begin('~/.config/nvim/plugged')

Plug 'airblade/vim-gitgutter' " display git changes in sign column
Plug 'ap/vim-buftabline' " list buffers at top
" Plug 'AndrewRadev/linediff.vim' " diff lines in in the same file
" Plug 'AndrewRadev/splitjoin.vim' " switch between single and multi line statements
" Plug 'bling/vim-airline' " nice status line
" Plug 'brookhong/cscope.vim' " cscope integration
Plug 'bronson/vim-visual-star-search' " use * and # in visual selection
Plug 'bruno-/vim-vertical-move' " move up and down without moving cursor, ]v and [v
" " Plug 'chrisbra/vim-autoread' " real autoread functionality!
Plug 'cloudhead/neovim-fuzzy' " fuzzy finder
Plug 'ctrlpvim/ctrlp.vim' " fuzzy finder
" Plug 'devjoe/vim-codequery' " codequery integration
" " Plug 'easymotion/vim-easymotion' " easy movement (but not sure how useful)
" Plug 'EinfachToll/DidYouMean' " handle ambiguous paths
" Plug 'gregsexton/gitv' " alternative to fugitive
Plug 'haya14busa/incsearch.vim' " improved /
Plug 'haya14busa/incsearch-fuzzy.vim' " fuzzy search with z/
" Plug 'honza/vim-snippets' " snippets for ultisnips
" Plug 'jeetsukumaran/vim-indentwise' " move indentwise with [- and ]+
" " Plug 'jistr/vim-nerdtree-tabs' " nerdtree fix
" Plug 'junegunn/vim-easy-align' " align stuff
" Plug 'junegunn/vim-peekaboo' " preview registers
" Plug 'justinmk/vim-sneak' " handy 2 char search with s
" Plug 'kshenoy/vim-signature' " util for marks
" Plug 'majutsushi/tagbar' " tagbar F8
" " Plug 'mbbill/undotree' " visualize undo tree (mapped to F7)
" Plug 'mhinz/vim-randomtag' " :Random displays a random helptag
Plug 'morhetz/gruvbox' " colorscheme
" " Plug 'scrooloose/nerdtree' " file browser
" " Plug 'Shathur/tailf.vim' " use for tailing commands
" Plug 'Shathur/yang.vim' " yang ft, forked for tailf
" " Plug 'Shathur/YouCompleteMe' " completion engine, forked for tailf (not sure if it can be installed with vim-plug, though)
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'Shougo/unite.vim' " interface tools
" Plug 'SirVer/ultisnips' " snippets
" Plug 'szw/vim-maximizer' " toggle maximize window with F6
" Plug 'terryma/vim-expand-region' " expand/shrink visual selection with + and -
" Plug 'terryma/vim-multiple-cursors' " edit many occurrences at the same time, ^N
" Plug 'tmux-plugins/vim-tmux' " ft for .tmux.conf
" Plug 'tmux-plugins/vim-tmux-focus-events' " correct focus events when run in tmux
" Plug 'tpope/vim-abolish' " substitue variations of words
Plug 'tpope/vim-commentary' " quick commenting with gcc
" Plug 'tpope/vim-eunuch' " unix sugar like :Rename and :Delete
" Plug 'tpope/vim-git' " vim-git runtime files
" Plug 'tpope/vim-fugitive' " git integration
Plug 'tpope/vim-obsession' " track sessions
" Plug 'tpope/vim-repeat' " repeat more stuff with .
" Plug 'tpope/vim-speeddating' " {in,de}crement dates with ^A and ^X
" Plug 'tpope/vim-surround' " surround stuff, like ysiw(
Plug 'tpope/vim-unimpaired' " some pair mappings, like [b [e [<Space> etc.
" " Plug 'Valloric/ListToggle' " toggle open quickfix and location list w <ldr>q, <ldr>l
" Plug 'vim-airline/vim-airline-themes' " themes for airline
" Plug 'vimperator/vimperator.vim' " vimperator filetype
" Plug 'vim-scripts/TaskList.vim' " toggle eclipse-like tasklist with <ldr>t
" Plug 'vim-utils/vim-g2' " get binary representation of a char with g2
" Plug 'vim-utils/vim-husk' " boost the command-line
" Plug 'vim-utils/vim-interruptless' " disable some annoying messages
" Plug 'vim-utils/vim-line' " 'inner line' text objects with _
" " Plug 'vim-utils/vim-man' " open man with :Man and :Vman
" Plug 'wellle/targets.vim' " additional text objects
" Plug 'wesQ3/vim-windowswap' " swap windows with <ldr>ww
" Plug 'xolox/vim-easytags' " easy tag generation and handling
" Plug 'xolox/vim-misc' " depency for easytags and notes
" Plug 'xolox/vim-notes' " note taking with
" Plug 'Yggdroot/indentLine' " visual indent guides

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

cab PL PlugList
cab PI PlugInstall
cab PS PlugSearch
cab PU PlugUpdate
cab PC PlugClean

""" SETTINGS """
set number relativenumber " display relative line numbers
set scrolloff=5 " number of lines to keep between cursor and edge

set tabstop=4 softtabstop=0 expandtab shiftwidth=4 " always use spaces instead of tabs
set autoindent smartindent " autoindent in new blocks, etc
set backspace=indent,eol " backspace over indents and eol (but not start of insert)
set ignorecase smartcase " lower case: ignore, any upper case: don't ignore
set textwidth=160 " use the modified t-clone textwidth
set listchars=eol:¬,tab:→\ ,trail:~,extends:>,precedes:<,space:•,nbsp:␣

set hidden " abandoned buffers become hidden instead of unloaded
set splitright " open vertical split at the right side
set showcmd " display commands as they're being typed
set showmatch matchtime=1 " jump to matching bracket for 0.1 s
set tildeop " enable ~ operator (switch case)
set makeprg=make\ -C\ src " always use bare make as make program

set undofile " use undofiles
set backupskip=/tmp/* " don't backup at this path
set noswapfile " don't use swap files

set wildmenu " use completion in cli
set wildignore+=.git,bin,load-dir,test/drned/drned-ncs,undo,ncsc-out

set foldnestmax=3 " folds shouldn't be nested too much
set foldminlines=5 " no use folding less lines than this
set nofoldenable " don't fold by default

let mapleader=' ' " space instead of \

""" incsearch """
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

""" incsearch-fuzzy """
map z/ <Plug>(incsearch-fuzzy-/)
map z? <Plug>(incsearch-fuzzy-?)
map zg/ <Plug>(incsearch-fuzzy-stay)

map <F3> :noh<CR>

syntax on
autocmd FileType yang setlocal shiftwidth=2 tabstop=2 commentstring=//%s
autocmd FileType xml setlocal shiftwidth=2 tabstop=2
autocmd FileType vim setlocal shiftwidth=2 tabstop=2
autocmd Filetype notes WP " use word processor mode for notes
autocmd Filetype cisco setlocal shiftwidth=1 tabstop=1 commentstring=!%s " custom ft

execute "set scroll=" . &lines / 3
if has ("autocmd")
  autocmd FocusLost,InsertEnter   * set norelativenumber
  autocmd FocusGained,InsertLeave * set relativenumber
  autocmd VimResized * execute "set scroll=" . &lines / 3
endif

""" buffer mappings """
nmap <leader>b :ls<CR>:b
nmap <leader>x :bd<CR>

nmap <leader>1 :buffer 1<CR>
nmap <leader>2 :buffer 2<CR>
nmap <leader>3 :buffer 3<CR>
nmap <leader>4 :buffer 4<CR>
nmap <leader>5 :buffer 5<CR>
nmap <leader>6 :buffer 6<CR>
nmap <leader>7 :buffer 7<CR>
nmap <leader>8 :buffer 8<CR>
nmap <leader>9 :buffer 9<CR>

""" buftabline """
let g:buftabline_numbers=1
let g:buftabline_indicators=1

""" airline """
let g:airline_powerline_fonts = 1
let g:airline#extensions#obsession#enabled = 1
let g:airline#extensions#obsession#indicator_text = '✔'
let g:airline#extensions#wordcount#enabled = 1
let g:airline#extensions#wordcount#filetypes = '\vhelp|markdown|rst|org|text|asciidoc|notes'

""" ctrlp """
let g:ctrlp_working_path_mode = '0'
let g:ctrlp_extensions = ['quickfix']
