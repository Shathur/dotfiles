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

Plugin 'airblade/vim-gitgutter' " display git changes in sign column
Plugin 'airblade/vim-rooter' " cd to project root
Plugin 'ap/vim-buftabline' " list buffers at top (I never use tabs anyway)
Plugin 'AndrewRadev/linediff.vim' " diff lines in in the same file
Plugin 'AndrewRadev/splitjoin.vim' " switch between single and multi line statements
Plugin 'benmills/vimux' " call tmux from within vim
Plugin 'bling/vim-airline' " nice status line
Plugin 'brookhong/cscope.vim' " cscope integration
Plugin 'bronson/vim-visual-star-search' " use * and # in visual selection
Plugin 'bruno-/vim-vertical-move' " move up and down without moving cursor, ]v and [v
Plugin 'chrisbra/vim-autoread' " real autoread functionality!
Plugin 'ctrlpvim/ctrlp.vim' " fuzzy finder
Plugin 'easymotion/vim-easymotion' " easy movement (but not sure how useful)
Plugin 'EinfachToll/DidYouMean' " handle ambiguous paths
Plugin 'gregsexton/gitv' " alternative to fugitive
Plugin 'haya14busa/incsearch.vim' " improved /
Plugin 'haya14busa/incsearch-fuzzy.vim' " fuzzy search with z/
Plugin 'honza/vim-snippets' " snippets for ultisnips
Plugin 'jeetsukumaran/vim-indentwise' " move indentwise with [- and ]+
Plugin 'jistr/vim-nerdtree-tabs' " nerdtree fix
Plugin 'junegunn/vim-easy-align' " align stuff
Plugin 'junegunn/vim-peekaboo' " preview registers
Plugin 'justinmk/vim-sneak' " handy 2 char search with s
Plugin 'kshenoy/vim-signature' " util for marks
Plugin 'majutsushi/tagbar' " tagbar F8
Plugin 'mbbill/undotree' " visualize undo tree (mapped to F7)
Plugin 'mhinz/vim-randomtag' " :Random displays a random helptag
Plugin 'morhetz/gruvbox' " colorscheme
Plugin 'scrooloose/nerdtree' " file browser
Plugin 'Shathur/tailf.vim' " use for tailing commands
Plugin 'Shathur/yang.vim' " yang ft, forked for tailf
Plugin 'Shathur/YouCompleteMe' " completion engine, forked for tailf
Plugin 'SirVer/ultisnips' " snippets
Plugin 'szw/vim-maximizer' " toggle maximize window with F6
Plugin 'terryma/vim-expand-region' " expand/shrink visual selection with + and _
Plugin 'terryma/vim-multiple-cursors' " edit many occurrences at the same time, ^N
Plugin 'tmux-plugins/vim-tmux' " ft for .tmux.conf
Plugin 'tmux-plugins/vim-tmux-focus-events' " correct focus events when run in tmux
Plugin 'tpope/vim-abolish' " substitue variations of words
Plugin 'tpope/vim-commentary' " quick commenting with gcc
Plugin 'tpope/vim-eunuch' " unix sugar like :Rename and :Delete
Plugin 'tpope/vim-git' " vim-git runtime files
Plugin 'tpope/vim-fugitive' " git integration
Plugin 'tpope/vim-obsession' " track sessions
Plugin 'tpope/vim-repeat' " repeat more stuff with .
Plugin 'tpope/vim-speeddating' " {in,de}crement dates with ^A and ^X
Plugin 'tpope/vim-surround' " surround stuff, like ysiw(
Plugin 'tpope/vim-unimpaired' " some pair mappings, like [b [e [<Space> etc.
Plugin 'Valloric/ListToggle' " toggle open quickfix and location list w <ldr>q, <ldr>l
Plugin 'vim-airline/vim-airline-themes' " themes for airline
Plugin 'vim-scripts/TaskList.vim' " toggle eclipse-like tasklist with <ldr>t
Plugin 'vim-utils/vim-g2' " get binary representation of a char with g2
Plugin 'vim-utils/vim-husk' " boost the command-line
Plugin 'vim-utils/vim-interruptless' " disable some annoying messages
Plugin 'vim-utils/vim-line' " 'inner line' text objects with _
Plugin 'vim-utils/vim-man' " open man with :Man and :Vman
Plugin 'wellle/targets.vim' " additional text objects
Plugin 'wesQ3/vim-windowswap' " swap windows with <ldr>ww
Plugin 'xolox/vim-easytags' " easy tag generation and handling
Plugin 'xolox/vim-misc' " depency for easytags and notes
Plugin 'xolox/vim-notes' " note taking with

" disabled plugins
" Plugin 'Chiel92/vim-autoformat' " probably not needed
" Plugin 'ervandew/eclim' " would be great to have, but requires java 7 :(

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

cabbrev PL PluginList
cabbrev PI PluginInstall
cabbrev PS PluginSearch
cabbrev PU PluginUpdate
cabbrev PC PluginClean

set number " display line numbers by default
set ruler " obsoleted by airline
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab " always use spaces instead of tabs
set autoindent smartindent " autoindent in new blocks, etc
set hidden " abandoned buffers become hidden instead of unloaded
set incsearch " display match when typing
set ignorecase smartcase " lower case: ignore, any upper case: don't ignore
set showcmd " display commands as they're being typed
set formatoptions+=j " remove comment leader when joining lines
set cursorline " highlight current line
set backspace=indent,eol " backspace over indents and eol (but not start of insert)
set showmatch matchtime=1 " jump to matching bracket for 0.1 s
set tildeop " enable ~ operator (switch case)
set lazyredraw " don't update screen unnecessarily
set makeprg=make\ -C\ src " always use bare make as make program
set splitright " open vertical split at the right side
set undofile undodir=~/.vim/undo " use undofiles, put them here
set shortmess+=c " hide ins-completion messages
set backupskip=/tmp/* " don't backup at this path
set backupdir=~/.vim/backups " put backups here
set noswapfile " don't use swap files
set wildmenu " use completion in cli
set wildignore+=.git,bin,netsim,load-dir,test/drned/drned-ncs
set textwidth=160 " use the modified t-clone textwidth
set foldnestmax=3 " folds shouldn't be nested too much
set foldminlines=5 " no use folding less lines than this
set nofoldenable " don't fold by default
set history=10000 " remember the last 1000 commands
set scrolloff=5 " number of lines to keep between cursor and edge

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

colorscheme gruvbox
set background=dark

" transparent background
" hi Normal ctermbg=none
" autocmd VimEnter,FocusGained * hi Normal guibg=none ctermbg=none

let mapleader=' ' " space instead of \

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

map <leader>n :NERDTreeTabsToggle<CR>
map <F2> :e $MYVIMRC<CR>

" replace word under cursor
nnoremap <Leader>R :%s/\<<C-r><C-w>\>/

" always display status
set laststatus=2

let g:airline_powerline_fonts = 1

let g:airline#extensions#obsession#enabled = 1
let g:airline#extensions#obsession#indicator_text = '✔'
let g:airline#extensions#wordcount#enabled = 1
let g:airline#extensions#wordcount#filetypes = '\vhelp|markdown|rst|org|text|asciidoc|notes'

nmap <F8> :TagbarToggle<CR>

" disable Ex mode
nnoremap Q <nop>

nnoremap <leader>u :update<CR>

" move between windows
nmap <C-H> <C-W>h
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l

let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_extensions = ['quickfix']
let g:ctrlp_custom_ignore = '\v/(bin|build)$'

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

map <F4> :UpdateTags<CR>:HighlightTags<CR>

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

" let g:quickfixsigns_classes = ['qfl', 'loc']
" let g:quickfixsigns_class_cursor = {}

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

noremap <leader>c :let @+=@"<CR>

let g:maximizer_default_mapping_key = '<F6>'

command! Reload :source $MYVIMRC | noh
cabbrev R Reload

let g:UltiSnipsExpandTrigger='<c-Space>'
set rtp+='~/stash/dotfiles/vimruntime/'

cab mm Man
cab vm Vman
cab makE make
cab RT RemoveTrailingSpaces
cab GGPH GitGutterPreviewHunk
cab HT HighlightTags

" Delay opening of peekaboo window (in ms. default: 0)
let g:peekaboo_delay = 750

nnoremap <F7> :UndotreeToggle<cr>
