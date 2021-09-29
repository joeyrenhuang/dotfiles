"**************************
" This is a vim config file
" Maintance the key-mappings
" :help key-mapping 
"**************************

" fast edit and reload vim config
nnoremap cfge :e ~/.vimrc<CR>
nnoremap cfgr :source ~/.vimrc<CR><CR>

"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>
"normal a \<BS>\<Esc>"

" Apply Macro to multiple lines
" xnoremap split as x-noremap
" x is one of the map-modes, means Visual
" therefor xnoremap means only map when in Visual mode
" C-u: clear command line
" CR: carriage return same as <Return> or <Enter>
" also see :help key-notation
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>
function! ExecuteMacroOverVisualRange() " Excute Macro in multiple lines
  " getchar is waitting q character avaible
  " return charCode like 13
  " nr2char will get the string
  " example nr2char(65) -> a
  execute ":'<,'>normal @".nr2char(getchar())
endfunction

"**************************
" Create more mappings
" And all our self-defined
" command with same common
" prefix or leader
"**************************
" our mappings all starts with Space, cause Space is easy enough to click
let mapleader = "\<Space>"
" for saving and closing
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>wq :wq<cr>
nnoremap <leader>' i''<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap [ []<Esc>i
nnoremap <leader>d mm%x`mx
nnoremap <leader>b :bn<cr>
nnoremap <leader>B :bp<cr>
nnoremap <leader>f :cn<cr>
nnoremap <leader>F :cp<cr>
nnoremap <leader>ff :Ff<space>
command! -nargs=+ -complete=file -bar Ff vim <args> | cw
" expand current window both direction by: new a tab
nnoremap <C-w>O :tabnew%<cr>
" expand current window both direction by: <C-w>_ and <C-w>|
" nnoremap <C-w>m <C-w>_<C-w>\|
nnoremap <C-w>m :call ToggleWindow()<CR><CR>
function! ToggleWindow()
  let id = 1
  let ids = winnr('$')
  while id <= ids
    if winwidth(id) == 1 || winheight(id) == 1
      break
    endif
    let id += 1
  endwhile
  if id > ids
    wincmd _ | wincmd |
  else
    wincmd =
  endif
endfunction
