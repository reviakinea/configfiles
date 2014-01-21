set encoding=utf8


"""""""""""""""""""""""""""""""""""""""""""""""""""
" Bundles
"""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off

if has('win32') || has('win64')
    set rtp+=~/vimfiles/bundle/vundle/ 
    call vundle#rc('~/vimfiles/bundle/')
else
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
endif

Bundle 'gmarik/vundle'

filetype plugin indent on


"""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""
" SnipMate plugin
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'git://github.com/honza/vim-snippets.git'

" NerdTree
Bundle "git://github.com/scrooloose/nerdtree.git"

" Solarized color scheme
Bundle 'git://github.com/altercation/vim-colors-solarized.git'

" Airline
Bundle 'bling/vim-airline'

" Markdown
Bundle 'nelstrom/vim-markdown-folding'

" Notes
Bundle 'xolox/vim-notes'
Bundle 'xolox/vim-misc'

" Python-mode
" Bundle 'klen/python-mode'

" Jedi-vim
Bundle 'davidhalter/jedi-vim'

" Colors
Bundle 'flazz/vim-colorschemes'

"""""""""""""""""""""""""""""""""""""""""""""""""""
" Behavior
"""""""""""""""""""""""""""""""""""""""""""""""""""
set ffs=unix,dos,mac
set fencs=utf-8,cp1251,cp866
set autoread

set lazyredraw
set noerrorbells
set novisualbell

set nobackup
set nowritebackup
set noswapfile

set tabstop=4   
set shiftwidth=4
set smarttab
set expandtab
set autoindent
set smartindent

set hlsearch
set incsearch
set ignorecase
set smartcase

set backspace=eol,start,indent
set whichwrap+=<,>,h,l


"""""""""""""""""""""""""""""""""""""""""""""""""""
" View
"""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on

colorscheme darkZ
set background=dark

set number
set showmatch

if has("gui_running")
    set guioptions+=c
    set guioptions-=m
    set guioptions-=T
    set guioptions-=r
    set guioptions-=R
    set guioptions-=l
    set guioptions-=L
    set guioptions-=e

    set t_Co=256
    set guifont=DejaVu\ Sans\ Mono\ 9 
    set guitablabel=%M\ %t
endif

set laststatus=2
let g:airline_powerline_fonts = 1

"set statusline=%1*%m%r%*%2*%h%*
"set statusline+=%3*\ %f\ %*
"set statusline+=%3*%=%*
"set statusline+=%4*\ %c\ %p%%\ %*
"hi User1 guifg=Red  guibg=Black
"hi User2 guifg=Green guibg=Black
"hi User3 guifg=Orange guibg=Black
"hi User4 guifg=Green guibg=Black


" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 0

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0



"""""""""""""""""""""""""""""""""""""""""""""""""""
" Jedi-vim
"""""""""""""""""""""""""""""""""""""""""""""""""""
let g:jedi#goto_assignments_command = ""
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = ""
let g:jedi#usages_command = ""
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = ""
let g:jedi#show_call_signatures = "1"


"""""""""""""""""""""""""""""""""""""""""""""""""""
" Keys
"""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=","
let g:mapleader=","

" Move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


"""""""""""""""""""""""""""""""""""""""""""""""""
" Read local settings (fonts, colors, ...)
"""""""""""""""""""""""""""""""""""""""""""""""""
let s:localrc = expand($HOME . '/.vimrc_local')
if filereadable(s:localrc)
    exec ':source' . s:localrc
endif

