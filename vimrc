" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" TODO: this may not be in the correct place. It is intended to allow overriding <Leader>.
" source ~/.vimrc.before if it exists.
if filereadable(expand("~/.vimrc.before"))
  source ~/.vimrc.before
endif

" =============== Pathogen Initialization ===============
" This loads all the plugins in ~/.vim/bundle
" Use tpope's pathogen plugin to manage all other plugins

  runtime bundle/tpope-vim-pathogen/autoload/pathogen.vim
  call pathogen#infect()
  call pathogen#helptags()

" ================ General Config ====================

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

"turn on syntax highlighting
syntax on

" ================ Search Settings  =================

set incsearch        "Find the next match as we type the search
set hlsearch         "Hilight searches by default
set viminfo='100,f1  "Save up to 100 marks, enable capital marks

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.

silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

"

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Vim Bundles ======================
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" required! 
Bundle 'gmarik/vundle'


"Eventually Vundle YADR plugins
"Bundle 'vim/bundle/AndrewRadev-splitjoin'
"Bundle 'vim/bundle/MarcWeber-vim-addon-mw-utils'
"Bundle 'vim/bundle/aaronjensen-vim-sass-status'
"Bundle 'vim/bundle/astashov-vim-ruby-debugger'
"Bundle 'vim/bundle/austintaylor-vim-indentobject'
"Bundle 'vim/bundle/bbommarito-vim-slim'
"Bundle 'vim/bundle/bootleq-vim-textobj-rubysymbol'
"Bundle 'vim/bundle/briancollins-vim-jst'
"Bundle 'vim/bundle/briandoll-change-inside-surroundings'
"Bundle 'vim/bundle/chrisbra-NrrwRgn/.gitignore'
"Bundle 'vim/bundle/chrisbra-NrrwRgn/Makefile'
"Bundle 'vim/bundle/chrisbra-NrrwRgn/README'
"Bundle 'vim/bundle/chrisbra-NrrwRgn/autoload/nrrwrgn.vim'
"Bundle 'vim/bundle/chrisbra-NrrwRgn/doc/NarrowRegion.txt'
"Bundle 'vim/bundle/chrisbra-NrrwRgn/plugin/NrrwRgn.vim'
"Bundle 'vim/bundle/chrisbra-NrrwRgn/todo.txt'
"Bundle 'vim/bundle/chrisbra-color_highlight'
"Bundle 'vim/bundle/claco-jasmine'
"Bundle 'vim/bundle/digitaltoad-vim-jade'
"Bundle 'vim/bundle/drewolson-ruby_focused_unit_test_vim'
"Bundle 'vim/bundle/ecomba-vim-ruby-refactoring'
"Bundle 'vim/bundle/garbas-vim-snipmate'
"Bundle 'vim/bundle/godlygeek-csapprox'
"Bundle 'vim/bundle/godlygeek-tabular'
"Bundle 'vim/bundle/gregsexton-gitv'
"Bundle 'vim/bundle/groenewege-vim-less'
"Bundle 'vim/bundle/jistr-vim-nerdtree-tabs'
"Bundle 'vim/bundle/jtratner-vim-flavored-markdown'
"Bundle 'vim/bundle/kana-vim-arpeggio'
"Bundle 'vim/bundle/kana-vim-textobj-datetime'
"Bundle 'vim/bundle/kana-vim-textobj-entire'
"Bundle 'vim/bundle/kana-vim-textobj-function'
"Bundle 'vim/bundle/kana-vim-textobj-user'
"Bundle 'vim/bundle/kchmck-vim-coffee-script'
"Bundle 'vim/bundle/kien-ctrlp'
"Bundle 'vim/bundle/kogakure-vim-sparkup'
"Bundle 'vim/bundle/majutsushi-tagbar'
"Bundle 'vim/bundle/mattn-gist-vim'
"Bundle 'vim/bundle/mattn-webapi-vim'
"Bundle 'vim/bundle/mattn-zencoding-vim'
"Bundle 'vim/bundle/mileszs-ack'
"Bundle 'vim/bundle/nathanaelkane-vim-indent-guides'
"Bundle 'vim/bundle/nelstrom-vim-markdown-preview'
"Bundle 'vim/bundle/nelstrom-vim-textobj-rubyblock'
"Bundle 'vim/bundle/pangloss-vim-javascript'
"Bundle 'vim/bundle/raimondi-delimitMate'
"Bundle 'vim/bundle/scrooloose-nerdtree'
"Bundle 'vim/bundle/scrooloose-syntastic'
"Bundle 'vim/bundle/sjbach-lusty'
"Bundle 'vim/bundle/sjl-gundo'
"Bundle 'vim/bundle/skwp-YankRing'
"Bundle 'vim/bundle/skwp-greplace'
"Bundle 'vim/bundle/skwp-vim-colors-solarized'
"Bundle 'vim/bundle/skwp-vim-conque'
"Bundle 'vim/bundle/skwp-vim-easymotion'
"Bundle 'vim/bundle/skwp-vim-git-grep-rails-partial'
"Bundle 'vim/bundle/skwp-vim-html-escape'
"Bundle 'vim/bundle/skwp-vim-indexed-search'
"Bundle 'vim/bundle/skwp-vim-powerline'
"Bundle 'vim/bundle/skwp-vim-ruby-conque'
"Bundle 'vim/bundle/timcharper-textile'
"Bundle 'vim/bundle/tjennings-git-grep-vim'
"Bundle 'vim/bundle/tomtom-tcomment_vim'
"Bundle 'vim/bundle/tpope-vim-abolish'
"Bundle 'vim/bundle/tpope-vim-bundler'
"Bundle 'vim/bundle/tpope-vim-endwise'
"Bundle 'vim/bundle/tpope-vim-fugitive'
"Bundle 'vim/bundle/tpope-vim-git'
"Bundle 'vim/bundle/tpope-vim-haml'
"Bundle 'vim/bundle/tpope-vim-ragtag'
"Bundle 'vim/bundle/tpope-vim-rails'
"Bundle 'vim/bundle/tpope-vim-rake'
"Bundle 'vim/bundle/tpope-vim-repeat'
"Bundle 'vim/bundle/tpope-vim-surround'
"Bundle 'vim/bundle/tpope-vim-unimpaired'
"Bundle 'vim/bundle/vim-ruby-vim-ruby'
"Bundle 'vim/bundle/vim-scripts-AnsiEsc'
"Bundle 'vim/bundle/vim-scripts-AutoTag'
"Bundle 'vim/bundle/vim-scripts-IndexedSearch'
"Bundle 'vim/bundle/vim-scripts-Specky'
"Bundle 'vim/bundle/vim-scripts-Vim-R-plugin'
"Bundle 'vim/bundle/vim-scripts-ZoomWin'
"Bundle 'vim/bundle/vim-scripts-argtextobj'
"Bundle 'vim/bundle/vim-scripts-camelcasemotion'
"Bundle 'vim/bundle/vim-scripts-lastpos'
"Bundle 'vim/bundle/vim-scripts-matchit.zip'
"Bundle 'vim/bundle/vim-scripts-sudo'
"Bundle 'vim/bundle/wavded-vim-stylus'
"Bundle 'vim/bundle/xsunsmile-showmarks'



Bundle 'tpope/vim-cucumber.git'
Bundle 'scrooloose/nerdcommenter.git'
Bundle 'mileszs/ack.vim.git'
Bundle 'plasticboy/vim-markdown.git'
Bundle 'thisivan/vim-taglist.git'
Bundle 'ervandew/supertab.git'
Bundle 't9md/vim-chef.git'
Bundle 'tsaleh/vim-matchit.git'
Bundle 'benmills/vimux'
Bundle 'skalnik/vim-vroom'
Bundle 'jeffkreeftmeijer/vim-numbertoggle'
Bundle "motemen/git-vim"

