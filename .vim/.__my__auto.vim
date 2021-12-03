" run some commands automatically

" I WANT MAKE SECTION code highlight, and others blur, like a function content
autocmd CursorMoved * :execute 'match CurrentLines /.*\n.*\%#.*\n.*/'
autocmd CursorMovedI * :execute 'match CurrentLines /.*\n.*\%#.*\n.*/'

" quick new file with templates
augroup templates
  au!
  " read in templates files
  autocmd BufNewFile * silent! 0r ~/.vim/template/%:e.tpl
augroup END

" if filetype not determined, set it to be bash
autocmd BufEnter * if &filetype == "" | setlocal ft=sh | endif
autocmd BufEnter *.tsx setlocal ft=javascript

" open external and exit
augroup openexit
  au!
  autocmd BufRead *.png,*.jpg,*.jpeg !open %
  autocmd BufReadPost	*.png,*.jpg,*.jpeg e#
augroup END
autocmd BufEnter *.tpl setlocal fy=javascript

" create a self-clearing autocommand group called 'qf'
aug quickfix
    " clear all autocommands in this group
    au!

    " do :cwindow if the quickfix command doesn't start
    " with a 'l' (:grep, :make, etc.)
    au QuickFixCmdPost [^l]* cwindow

    " do :lwindow if the quickfix command starts with
    " a 'l' (:lgrep, :lmake, etc.)
    au QuickFixCmdPost l*    lwindow

    " do :cwindow when Vim was started with the '-q' flag
    au VimEnter        *     cwindow
aug end
