scriptencoding utf-8

" Dein plugin manager setup
set runtimepath^=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim
call dein#begin(expand('~/.config/nvim/dein'))

" Support for editorconfig files
call dein#add('editorconfig/editorconfig-vim')

" UI
call dein#add('scrooloose/nerdtree')
call dein#add('frankier/neovim-colors-solarized-truecolor-only')

" Git
call dein#add('tpope/vim-fugitive')
call dein#add('airblade/vim-gitgutter')
call dein#add('Xuyuanp/nerdtree-git-plugin')

" Language support
call dein#add('lambdatoast/elm.vim')
call dein#add('leafgarland/typescript-vim')

" Install missing plugins on startup
if dein#check_install()
  call dein#install()
endif

call dein#end()

""""
set undofile
set undodir=$HOME/.config/nvim/.undo

set termguicolors
set background=dark

colorscheme solarized
let g:solarized_degrade=1

