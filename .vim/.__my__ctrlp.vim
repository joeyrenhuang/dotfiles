" CtrlP config
" let g:ctrlp_working_path_mode = 0
let g:ctrlp_use_caching = 0
let g:ctrlp_show_hidden = 1
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:30,results:30'
let g:ctrlp_mruf_case_sensitive = 1

" CtrlP mapping
let mapleader = "\<Space>"
nnoremap <leader><leader> :CtrlPMRU<cr>
nnoremap <leader>c :CtrlPCurFile<cr>
nnoremap <leader>p :CtrlP<cr>

