set nocompatible
set backspace=start,eol,indent
set whichwrap=b,s,[,],,~
"set mouse=a
syntax on
set ignorecase
set number
set laststatus=2
set statusline=%F%r%h%=[POS=%04l,%04v][%p%%]\ [LEN=%L]
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ 
set incsearch
set wildmenu wildmode=list:full
set runtimepath+=~/.vim/
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set hlsearch
runtime! userautoload/*.vim
set guifont=Ricty\ Diminished\ Bold\ 14
set guifontwide=Ricty\ Diminished\ Bold\ 14
"set lines=120
"set columns=80
set t_Co=256
set scrolloff=7
set ambiwidth=double

set background=dark
colorscheme hybrid
nnoremap <silent> <Esc><Esc> :nohlsearch<CR>

" clipboard
vnoremap <C-c> :w !xsel -ib<CR><CR>

" Gtags
nnoremap <C-g> :Gtags
nnoremap <C-r> :Gtags -f %

" buffer switch
nnoremap sn :bn<CR>
nnoremap sp :bp<CR>
nnoremap sL :Unite buffer<CR>
nnoremap sd :VimFiler -create -split -simple -winwidth=30 -no-quit<CR>

" tab creation and swith
nnoremap ss :tabnew<CR>
nnoremap sl :tabnext<CR>
nnoremap sh :tabprevious<CR>

" C-Space -> ESC
inoremap <C-j> <ESC>
cnoremap <C-j> <ESC>
vnoremap <C-j> <ESC>

" C-k -> CR
inoremap <C-k> <CR>
cnoremap <C-k> <CR>

" ; -> :
" : -> ;
nnoremap : ;
nnoremap ; :

" neobundle
if has('vim_starting')
  if &compatible
    set nocompatible
  endif
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'shougo/neobundle.vim'

NeoBundle 'kannokanno/previm'
NeoBundle 'vim-scripts/gtags.vim'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/unite-outline'
NeoBundle 'Shougo/vimproc.vim'
NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'Shougo/vimshell.vim'
NeoBundleLazy 'vim-jp/cpp-vim', {
            \ 'autoload' : {'filetypes' : 'cpp'}
            \ }
NeoBundleLazy 'scrooloose/syntastic', {
            \ 'autoload' : {'filetypes' : 'go'}
            \ }
NeoBundle 'vim-scripts/TwitVim'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'mhinz/vim-startify'
NeoBundle 'justmao945/vim-clang'
NeoBundle 'fatih/vim-go'
NeoBundle 'papanikge/vim-voogle'
NeoBundle 'haya14busa/incsearch.vim'
NeoBundle 'aklt/plantuml-syntax'
"NeoBundle 'Rip-Rip/clang_complete'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

let g:vimfiler_as_default_explorer = 1

"let g:syntastic_check_on_open            = 0
"let g:syntastic_check_on_wq              = 0
"let g:syntastic_c_check_header           = 1
"let g:syntastic_cpp_check_header         = 1
"let g:syntastic_always_populate_loc_list = 0
"let g:syntastic_auto_loc_list            = 1
"let g:syntastic_cpp_compiler_options     = '-std=c++11'
"let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
"nnoremap <silent> <C-e><C-e> :SyntasticCheck<CR>

filetype plugin on

" previm configuration
let g:previm_open_cmd = 'firefox'
autocmd BufNewFile,BufRead *.md set filetype=markdown

" neocomplete
let g:neocomplete#enable_at_startup  = 1
let g:neocomplete#enable_ignore_case = 1
let g:neocomplete#enable_smart_case  = 1
let g:neocomplete#use_vimproc        = 1

" Configuration for vim-clang (copied from help)

" disable auto completion for vim-clang
let g:clang_auto = 0
" default 'longest' can not work with neocomplete
let g:clang_c_completeopt = 'menuone,preview'
let g:clang_cpp_completeopt = 'menuone,preview'
let g:clang_cpp_options = '-I/usr/include/c++/5.2.0 -I/usr/include/c++/5.2.0/x86_64-unknown-linux-gnu'
"let g:clang_compilation_database = './build'

" neocomplete
if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.c =
      \ '[^.[:digit:] *\t]\%(\.\|->\)\w*'
let g:neocomplete#force_omni_input_patterns.cpp =
      \ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
let g:neocomplete#force_omni_input_patterns.objc =
      \ '\[\h\w*\s\h\?\|\h\w*\%(\.\|->\)'
let g:neocomplete#force_omni_input_patterns.objcpp =
      \ '\[\h\w*\s\h\?\|\h\w*\%(\.\|->\)\|\h\w*::\w*'

" vim-voogle
let g:voogle_browser = 'firefox'
let g:search_engine  = 'https://www.google.co.jp/search?q='

" incsearch.vim
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
"map n  <Plug>(incsearch-nohl-n)
"map N  <Plug>(incsearch-nohl-N)
"map *  <Plug>(incsearch-nohl-*)
"map #  <Plug>(incsearch-nohl-#)
"map g* <Plug>(incsearch-nohl-g*)
"map g# <Plug>(incsearch-nohl-g#)
"let g:incsearch#auto_nohlsearch = 1

" vim-go
let g:go_highlight_functions = 1
let g:go_highlight_methods   = 1
let g:go_highlight_structs   = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
let g:go_fmt_autosave = 1
let g:neocomplete#force_omni_input_patterns.go = '\h\w\.\w*'
autocmd FileType go :highlight goErr cterm=bold ctermfg=214
autocmd FileType go :match goErr /\<err\>/
" golang configuration
let g:syntastic_go_checkers = ['go', 'golint', 'govet'] 

" open-browser
filetype on
let g:netrw_nogx = 1
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

