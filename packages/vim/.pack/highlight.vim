function! Highlights() abort
  highlight Pmenu ctermbg=red ctermfg=white
  highlight PmenuSel ctermbg=white ctermfg=darkred
endfunction

autocmd ColorScheme * call Highlights()
