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

" open-browser
let g:netrw_nogx = 1
nnoremap gx <Plug>(openbrowser-smart-search)
vnoremap gx <Plug>(openbrowser-smart-search)

" neobundle
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

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
"NeoBundle 'scrooloose/syntastic'
NeoBundle 'vim-scripts/TwitVim'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'mhinz/vim-startify'
NeoBundle 'justmao945/vim-clang'
NeoBundle 'fatih/vim-go'

call neobundle#end()

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
let g:clang_cpp_options = '-I/usr/include/c++/5.1.0 -I/usr/include/c++/5.1.0/x86_64-unknown-linux-gnu'

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

