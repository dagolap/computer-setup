scriptencoding utf-8

" Dein plugin manager setup
set runtimepath^=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim
call dein#begin(expand('~/.config/nvim/dein'))

" Support for editorconfig files
call dein#add('editorconfig/editorconfig-vim')

" UI
call dein#add('scrooloose/nerdtree')
call dein#add('frankier/neovim-colors-solarized-truecolor-only')

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


" Deoplete
" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#enable_refresh_always = 1
call deoplete#custom#set('buffer', 'mark', 'buffer')
call deoplete#custom#set('omni', 'mark', 'omni')
call deoplete#custom#set('file', 'mark', 'file')
let g:deoplete#omni_patterns = {}
let g:deoplete#omni_patterns.html = ''


"" KEYBINDINGS ""
" Meta + Backspace = Delete previous word
:imap <M-BS> <C-W>

