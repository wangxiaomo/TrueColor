set mouse=r
set ruler
set number
set showmode
set showcmd
set showmatch
set cursorline
set history=2000
set t_ti= t_te=
set nowrap
set hlsearch
set ignorecase
set smartcase
set incsearch
set autowrite
set autoread
set hidden
set sw=4
set ts=4
set colorcolumn=80
set t_Co=256
set laststatus=2
set foldmethod=manual
set viewdir=~/.vim-view
set expandtab
set fencs=utf-8,cp936
set backspace=indent,eol,start
set keywordprg=:help
set completeopt=menuone,preview

let g:onedark_termcolors=256
let g:enable_bold_font=1

if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

packadd! onedark.vim
set background=dark
colorscheme onedark
