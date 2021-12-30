"**************************
" This is a vim config file
"**************************

"set acd "Auto change working path, see :pwd
" set autochdir
set clipboard=unnamed " Use copy to p
let g:netrw_liststyle=3 "Set Folder disply as tree, use i to switch to see others
"*************************
" Indention Options
"*************************
set tabstop=2 " Set Tabsize as 2 spaces
" When shifting, indent using 2 spaces
" how to use
" ctrl + t for tab
" ctrl + d for de-tab
set shiftwidth=2
set shiftround " When shifting lines, round the indentation to the neareast multiple of shiftwidth
set expandtab " Convert tabs to spaces
set autoindent " New lines inherit the indentation of previous lines
filetype indent on " Enable indentation rules that are file-type specific

"*************************
" Search Options
"*************************
set hlsearch "Enable search highlighting.
set ignorecase "Ignore case when searching.
set incsearch "Incremental search that shows partial matches.
set smartcase "Automatically switch search to case-sensitive when search query contains an uppercase letter.

"*************************
" Performance Options
"*************************
set complete-=i " Limit the files searched for auto-completes
set lazyredraw " Don't update screen during macro and script execution

"*************************
" Text Rendering Options
"*************************
set display+=lastline " Always try to show a paragraph’s last line.
set encoding=utf-8 " Use an encoding that supports unicode.
set linebreak " Avoid wrapping a line in the middle of a word.
set scrolloff=5 " The number of screen lines to keep above and below the cursor.
set sidescrolloff=5 " The number of screen columns to keep to the left and right of the cursor.
syntax on " Enable syntax highlighting.
set wrap " Enable line wrapping.

"*************************
" User Interface Options
"*************************
set laststatus=2 " Always display the status bar.
set ruler " Always show cursor position.
set wildmenu " Display command line’s tab complete options as a menu.
set tabpagemax=50 " Maximum number of tab pages that can be opened from the command line.
set cursorline " Highlight the line currently under cursor.
set number " Show line numbers on the sidebar.
set relativenumber " Show line number on the current line and relative numbers on all other lines.
set noerrorbells " Disable beep on errors.
set novisualbell " No Flash the screen instead of beeping on errors.
set t_vb=
set tm=500
set mouse=a " Enable mouse for scrolling and resizing.
set title " Set the window’s title, reflecting the file currently being edited.

"*************************
" Code Folding Options
"*************************
" set foldmethod=indent " Fold based on indention levels.
" set foldnestmax=3 " Only fold up to three nested levels.
" set nofoldenable " Disable folding by default.
" set foldlevelstart=3 " default fold 3 nested levels.
set foldmethod=syntax
"*************************
" Miscellaneous Options
"*************************
set autoread " Automatically re-read files if unmodified inside Vim.
set backspace=indent,eol,start " Allow backspacing over indention, line breaks and insertion start.
set confirm " Display a confirmation dialog when closing an unsaved file.
set formatoptions+=j " Delete comment characters when joining lines.
set hidden " Hide files in the background instead of closing them.
set history=1000 " Increase the undo limit.
set nomodeline " Ignore file’s mode lines; use vimrc configurations instead.
set noswapfile " Disable swap files.
set nobackup
set nrformats-=octal " Interpret octal as decimal when incrementing numbers.
" set shell " The shell used to execute commands.
set spell " Enable spellchecking.
set wildignore+=.pyc,.swp " Ignore files matching these patterns when opening files based on a glob pattern.

"*************************
" https://github.com/stoeffel/.dotfiles/blob/master/vim/settings.vim
"*************************
set wildmenu
set wildmode=full
set wildignorecase
set wildignore+=**/node_modules/**
set wildignore+=**/bower_components/**
set wildignore+=**/dist/**
set wildignore+=**/coverage/**
set wildignore+=**/.bundle/**
set wildignore+=**/.sass-cache/**
set wildignore+=**/.git/**
set wildignore+=**/.svn/**
set wildignore+=*.DS_Store
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg
set wildignore+=*.o,*.obj,*.exe,*.dll
