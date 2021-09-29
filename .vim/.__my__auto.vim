" run some commands automatically

" if filetype not determined, set it to be bash
autocmd BufEnter * if &filetype == "" | setlocal ft=sh | endif

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
