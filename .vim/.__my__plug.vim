filetype off
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'ctrlpvim/ctrlp.vim'
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'
Plug 'vim-airline/vim-airline'
" Plug 'b4b4r07/vim-pt'
" Plug 'bronson/vim-visual-star-search'
" Plug 'editorconfig-vim'
" Plug 'kassio/neoterm'
" Plug 'wincent/terminus'
" Plug 'scrooloose/syntastic'
" Plug 'tommcdo/vim-exchange'
" Plug 'tpope/vim-abolish'
" Plug 'tpope/vim-commentary'
" Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-sensible'
" Plug 'tpope/vim-sleuth'
" Plug 'tpope/vim-surround'
" Plug 'tpope/vim-vinegar'
" Plug 'tpope/vim-eunuch'
" Plug 'unimpaired.vim'
" Plug 'vim-multiple-cursors'
" Plug 'AndrewRadev/splitjoin.vim'
" Plug 'junegunn/goyo.vim'
" Plug 'Olical/vim-enmasse'
" Plug 'tpope/vim-endwise'
" Plug 'gonzaloserrano/vim-markdown-todo'

" style
" Plug 'wolverian/minimal'
" Plug 'dracula/vim'
" Plug 'altercation/vim-colors-solarized'
" Plug 'lifepillar/vim-solarized8'
" Plug 'sindresorhus/focus'
" Plug 'gosukiwi/vim-atom-dark'
" Plug 'joshdick/onedark.vim'
" Plug 'owickstrom/vim-colors-paramount'
Plug 'NLKNguyen/papercolor-theme'
" Plug 'reedes/vim-colors-pencil'
" Plug 'chriskempson/base16-vim'
" Plug 'morhetz/gruvbox'
" Plug 'ajh17/Spacegray.vim'
" Plug 'tpope/vim-flagship'
" Plug 'ryanpcmcquen/true-monochrome_vim'
" Plug 'sindresorhus/focus'
" Plug 'whatyouhide/vim-gotham'

" lng supprt
" Plug 'alx741/vim-hindent'
" Plug 'tpope/vim-salve'
" Plug 'tpope/vim-fireplace'
" Plug 'rizzatti/dash.vim'
" Plug 'elmcast/elm-vim'
" Plug 'neovimhaskell/haskell-vim'
" Plug 'kchmck/vim-coffee-script'
" Plug 'jade.vim'
" Plug 'less-syntax'
" Plug 'maksimr/vim-jsbeautify'
Plug 'mattn/emmet-vim'
" Plug 'vim-scripts/jshint.vim'
" Plug 'vim-stylus'
" Plug 'lambdatoast/elm.vim'
" Plug 'Ioannis-Kapoulas/vim-autoprefixer'
" Plug 'elixir-lang/vim-elixir'
" Plug 'slashmili/alchemist.vim'

" ruby
" Plug 'thoughtbot/vim-rspec'
" Initialize plugin system
call plug#end()
colorscheme PaperColor " See plugin papercolor-theme
filetype plugin  on
syntax enable
