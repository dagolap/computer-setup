scriptencoding utf-8

" Dein plugin manager setup
set runtimepath^=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim
call dein#begin(expand('~/.config/nvim/dein'))

" Support for editorconfig files
call dein#add('editorconfig/editorconfig-vim')

" UI
call dein#add('scrooloose/nerdtree')
call dein#add('frankier/neovim-colors-solarized-truecolor-only')
call dein#add('vim-airline/vim-airline')
call dein#add('ryanoasis/vim-devicons')
call dein#add('tiagofumo/vim-nerdtree-syntax-highlight')
" call dein#add('Yggdroot/indentline')
" call dein#add('chrisbra/Colorizer')

" Completion
call dein#add('Shougo/deoplete.nvim')

" Comments
call dein#add('tpope/vim-commentary')

" Surround
call dein#add('tpope/vim-surround')

" Git
call dein#add('tpope/vim-fugitive')
call dein#add('airblade/vim-gitgutter')
call dein#add('Xuyuanp/nerdtree-git-plugin')

" Search / replace / etc.
call dein#add('junegunn/fzf', {'build': './install --all' })
call dein#add('junegunn/fzf.vim')

" Language support
call dein#add('lambdatoast/elm.vim')
call dein#add('leafgarland/typescript-vim')
call dein#add('slashmili/alchemist.vim')

" Install missing plugins on startup
if dein#check_install()
  call dein#install()
endif

call dein#end()


""""
" General Vim configuration
set undofile
set undodir=$HOME/.config/nvim/.undo

set termguicolors
set background=dark

colorscheme solarized
let g:solarized_degrade=1

" Search
set ignorecase " Ignore case in search pattern
set smartcase " Override ignore case if search contains uppercase chars
set incsearch " Update search as we type
set nohlsearch 

" General
set ts=2
set sw=2
set expandtab " Insert spaces instead of tabs
set smarttab "Insert chars to line up with tabstop
set autoindent " Dont highlight while searching
set smartindent " Try to jump to correct indent when starting newline indent
set wildmenu " Better completion menu
set wildmode=full " Completion mode
set wildignore+=*.o,*.out,*.obj,*.class,*.pyc,*.swp
set wildignore+=*.git,*.svn
set laststatus=2 " Last window will always have a status line
set nu " Line numbers
set list
set hidden " Buffers are hidden when unloaded
set ruler " Relative position on the far right
set nowrap " Dont display soft wraps
set lazyredraw " Dont redraw screen while performing macros etc.
set so=10
set mouse-=a
syntax on

set virtualedit=block " Allow placing cursor where there is no character in block mode


" Deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#enable_refresh_always = 1
call deoplete#custom#set('buffer', 'mark', 'buffer')
call deoplete#custom#set('omni', 'mark', 'omni')
call deoplete#custom#set('file', 'mark', 'file')
let g:deoplete#omni_patterns = {}
let g:deoplete#omni_patterns.html = ''

" Indentline
let g:indentLine_char='|'

"" KEYBINDINGS ""
" Meta + Backspace = Delete previous word
let mapleader = "\<Space>"

:imap <M-BS> <C-W>

