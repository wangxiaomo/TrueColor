au BufWinLeave ?* silent mkview  "save file foldmethod status
au BufRead ?* silent loadview    "load file foldmethod status

if has("autocmd")
  au BufReadPost * if line("'\"")>1 && line("'\"")<=line("$") | exe "normal! g'\"" | endif
endif

autocmd FileType * execute 'setlocal dictionary='.expand($HOME.'/.vim/dict/'.&filetype.'.dict')
au BufRead,BufNewFile /etc/nginx/* set ft=nginx
au FileType php,python,perl,markdown set sw=4 ts=4 noexpandtab
au FileType vim,ruby,javascript,html,css,jade,smarty,blade set sw=2 ts=2
au BufNewFile,BufReadPost *.yml,*.coffee setl sw=2 ts=2
au BufNewFile,BufReadPost *.json,*.js,*.pac setl ft=javascript sw=2 ts=2
au BufNewFile,BufReadPost *.scss,*.sass,*.slim setl ft=scss sw=2 ts=2
au BufNewFile,BufReadPost *.vue setl ft=vue sw=2 ts=2
au BufNewFile,BufReadPost *.ts setl ft=typescript sw=2 ts=2
