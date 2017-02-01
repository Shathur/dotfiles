set nocompatible              " be iMproved, required

" auto install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged/')

packadd! matchit

Plug 'airblade/vim-gitgutter' " display git changes in sign column
Plug 'airblade/vim-rooter' " cd to project root
Plug 'ap/vim-buftabline' " list buffers at top
Plug 'AndrewRadev/linediff.vim' " diff lines in in the same file
Plug 'AndrewRadev/splitjoin.vim' " switch between single and multi line statements
Plug 'benmills/vimux' " call tmux from within vim
Plug 'bling/vim-airline' " nice status line
Plug 'brookhong/cscope.vim' " cscope integration
Plug 'bronson/vim-visual-star-search' " use * and # in visual selection
Plug 'bruno-/vim-vertical-move' " move up and down without moving cursor, ]v and [v
Plug 'chrisbra/vim-autoread' " real autoread functionality!
Plug 'ctrlpvim/ctrlp.vim' " fuzzy finder
Plug 'devjoe/vim-codequery' " codequery integration
Plug 'easymotion/vim-easymotion' " easy movement (but not sure how useful)
Plug 'EinfachToll/DidYouMean' " handle ambiguous paths
Plug 'gregsexton/gitv' " alternative to fugitive
Plug 'haya14busa/incsearch.vim' " improved /
Plug 'haya14busa/incsearch-fuzzy.vim' " fuzzy search with z/
Plug 'honza/vim-snippets' " snippets for ultisnips
Plug 'jeetsukumaran/vim-indentwise' " move indentwise with [- and ]+
Plug 'jistr/vim-nerdtree-tabs' " nerdtree fix
Plug 'junegunn/vim-easy-align' " align stuff
Plug 'junegunn/vim-peekaboo' " preview registers
Plug 'justinmk/vim-sneak' " handy 2 char search with s
Plug 'kshenoy/vim-signature' " util for marks
Plug 'majutsushi/tagbar' " tagbar F8
Plug 'mbbill/undotree' " visualize undo tree (mapped to F7)
Plug 'mhinz/vim-randomtag' " :Random displays a random helptag
Plug 'morhetz/gruvbox' " colorscheme
Plug 'scrooloose/nerdtree' " file browser
Plug 'Shathur/tailf.vim' " use for tailing commands
Plug 'Shathur/yang.vim' " yang ft, forked for tailf
Plug 'Shathur/YouCompleteMe' " completion engine, forked for tailf (not sure if it can be installed with vim-plug, though)
Plug 'Shougo/unite.vim' " interface tools
Plug 'SirVer/ultisnips' " snippets
Plug 'szw/vim-maximizer' " toggle maximize window with F6
Plug 'terryma/vim-expand-region' " expand/shrink visual selection with + and -
Plug 'terryma/vim-multiple-cursors' " edit many occurrences at the same time, ^N
Plug 'tmux-plugins/vim-tmux' " ft for .tmux.conf
Plug 'tmux-plugins/vim-tmux-focus-events' " correct focus events when run in tmux
Plug 'tpope/vim-abolish' " substitue variations of words
Plug 'tpope/vim-commentary' " quick commenting with gcc
Plug 'tpope/vim-eunuch' " unix sugar like :Rename and :Delete
Plug 'tpope/vim-git' " vim-git runtime files
Plug 'tpope/vim-fugitive' " git integration
Plug 'tpope/vim-obsession' " track sessions
Plug 'tpope/vim-repeat' " repeat more stuff with .
Plug 'tpope/vim-speeddating' " {in,de}crement dates with ^A and ^X
Plug 'tpope/vim-surround' " surround stuff, like ysiw(
Plug 'tpope/vim-unimpaired' " some pair mappings, like [b [e [<Space> etc.
Plug 'Valloric/ListToggle' " toggle open quickfix and location list w <ldr>q, <ldr>l
Plug 'vim-airline/vim-airline-themes' " themes for airline
Plug 'vimperator/vimperator.vim' " vimperator filetype
Plug 'vim-scripts/TaskList.vim' " toggle eclipse-like tasklist with <ldr>t
Plug 'vim-utils/vim-g2' " get binary representation of a char with g2
Plug 'vim-utils/vim-husk' " boost the command-line
Plug 'vim-utils/vim-interruptless' " disable some annoying messages
Plug 'vim-utils/vim-line' " 'inner line' text objects with _
Plug 'vim-utils/vim-man' " open man with :Man and :Vman
Plug 'wellle/targets.vim' " additional text objects
Plug 'wesQ3/vim-windowswap' " swap windows with <ldr>ww
Plug 'xolox/vim-easytags' " easy tag generation and handling
Plug 'xolox/vim-misc' " depency for easytags and notes
Plug 'xolox/vim-notes' " note taking with
Plug 'Yggdroot/indentLine' " visual indent guides

" disabled plugins
" Plug 'Chiel92/vim-autoformat' " probably not needed
" Plug 'ervandew/eclim' " would be great to have, but requires java 7 :(

" All of your Plugins must be added before the following line
call plug#end()            " required
filetype plugin indent on    " required
"
" Brief help
" :PlugList       - lists configured plugins
" :PlugInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PlugSearch foo - searches for foo; append `!` to refresh local cache
" :PlugClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" Put your non-Plugin stuff after this line

cabbrev PL PlugList
cabbrev PI PlugInstall
cabbrev PS PlugSearch
cabbrev PU PlugUpdate
cabbrev PC PlugClean

set number " display line numbers by default
set relativenumber " use relative line numbers
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
set makeprg=make\ -C\ src " always use bare make as make program
set splitright " open vertical split at the right side
set undofile undodir=~/.vim/undo " use undofiles, put them here
set shortmess+=c " hide ins-completion messages
set backupskip=/tmp/* " don't backup at this path
set backupdir=~/.vim/backups " put backups here
set noswapfile " don't use swap files
set wildmenu " use completion in cli
set wildignore+=.git,bin,load-dir,test/drned/drned-ncs,undo,ncsc-out
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

set termguicolors
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

let g:ctrlp_working_path_mode = '0'
let g:ctrlp_extensions = ['quickfix']

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
let g:gitgutter_eager = 0

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
  set thesaurus+=~/.vim/thesaurus/mthesaur.txt
  " set thesaurus+=~/.vim/thesaurus/ordlista.txt
  set complete+=s
  set formatprg=par
  setlocal wrap
  setlocal linebreak
endfu
com! WP call WordProcessorMode()

hi! link Sneak Search
hi! link SneakScope Visual
hi! link SneakLabel Search
omap z <Plug>Sneak_s
omap Z <Plug>Sneak_S

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
  \]
\}

noremap <leader>c :let @+=@"<CR>

let g:maximizer_default_mapping_key = '<F6>'

command! Reload :source $MYVIMRC | noh
cabbrev R Reload

let g:UltiSnipsExpandTrigger='<c-Space>'

command! RemoveTrailingSpaces :%s/\s\+$//e
cab RT RemoveTrailingSpaces

cab mm Man
cab vm Vman
cab makE make
cab GGPH GitGutterPreviewHunk
cab HT HighlightTags

" Delay opening of peekaboo window (in ms. default: 0)
let g:peekaboo_delay = 750

nnoremap <F7> :UndotreeToggle<cr>

" show indent guides with :IdentLinesToggle
let g:indentLine_enabled = 0

map [oz :set wrapscan<cr>
map ]oz :set nowrapscan<cr>
map coz :set wrapscan!<cr>

" Trigger db building (in current filetype) when your query fails
let g:codequery_trigger_build_db_when_db_not_found = 1

nnoremap <leader>: :CodeQueryMenu Unite Full<CR>
nnoremap <leader>; :CodeQueryMenu Unite Magic<CR>

" Or enable typing (to search menu items) by default
nnoremap <leader>\ :CodeQueryMenu Unite Magic<CR>A

augroup CursorLine
    au!
    au VimEnter * setlocal cursorline
    au WinEnter * setlocal cursorline
    au BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
augroup END
