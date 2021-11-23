"**************************
" This is a vim config file
"**************************
function! LoadCfg()
  for cfg in systemlist('cd ~/.vim && ls -a .__my__*')
    " echo 'vim config file loading: 'cfg
    execute 'source' . '~/.vim/'.cfg
  endfor 
endfunction
call LoadCfg()

" ChangeBackground changes the background mode based on macOS's `Appearance`
" setting. We also refresh the statusline colors to reflect the new mode.
function! ChangeBackground()
  if system("defaults read -g AppleInterfaceStyle") =~ '^Dark'
    set background=dark   " for the dark version of the theme
  else
    set background=light  " for the light version of the theme
  endif

  try
    execute "AirlineRefresh"
  catch
  endtry
endfunction

" initialize the colorscheme for the first run
call ChangeBackground()

" change the color scheme if we receive a SigUSR1
" autocmd SigUSR1 * call ChangeBackground()


