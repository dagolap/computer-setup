scriptencoding utf-8

" Plug setup
if has('nvim')
  if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  endif
else
  if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  endif
endif
autocmd VimEnter * PlugInstall --sync | source $MYVIMRC

if has('nvim')
  call plug#begin('~/.config/nvim/plugged')
else
  call plug#begin('~/.vim/plugged')
endif

" Support for editorconfig files
Plug 'editorconfig/editorconfig-vim'

" UI
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'vim-airline/vim-airline'

" Comments
Plug 'tpope/vim-commentary'

" Git
Plug 'tpope/vim-fugitive'

" Search / replace / etc.
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all --no-key-bindings --no-completion --update-rc' }

" Language support
Plug 'lambdatoast/elm.vim' " Elm
Plug 'leafgarland/typescript-vim' " Typescript
Plug 'slashmili/alchemist.vim' "Elixir


" Neovim specific plugins:
if has('nvim')
  Plug 'frankier/neovim-colors-solarized-truecolor-only'
  Plug 'Shougo/deoplete.nvim'
endif

call plug#end()

""""
" General Vim configuration
set undofile
if has('nvim')
  set undodir=$HOME/.config/nvim/.undo
else
  set undodir=$HOME/.vim/.undo
endif

set termguicolors
set background=dark

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


" Neovim specific config
if has('nvim')
  " Solarized color scheme
  colorscheme solarized
  let g:solarized_degrade=1

  " Deoplete
  let g:deoplete#enable_at_startup = 1
  let g:deoplete#enable_smart_case = 1
  let g:deoplete#enable_refresh_always = 1
  call deoplete#custom#set('buffer', 'mark', 'buffer')
  call deoplete#custom#set('omni', 'mark', 'omni')
  call deoplete#custom#set('file', 'mark', 'file')
  let g:deoplete#omni_patterns = {}
  let g:deoplete#omni_patterns.html = ''
endif

" Indentline
let g:indentLine_char='|'

"" KEYBINDINGS ""
" Meta + Backspace = Delete previous word
let mapleader = "\<Space>"

:imap <M-BS> <C-W>

