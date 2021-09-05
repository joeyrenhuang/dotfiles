" run some commands automatically

" if filetype not determined, set it to be bash
autocmd BufEnter * if &filetype == "" | setlocal ft=sh | endif
