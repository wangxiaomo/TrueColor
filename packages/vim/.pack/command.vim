map  <leader>1 :tabn 1<CR>
map  <leader>2 :tabn 2<CR>
map  <leader>3 :tabn 3<CR>
map  <leader>4 :tabn 4<CR>
map  <leader>e :NERDTreeTabsToggle<CR>
map  <leader>t :TagbarToggle<CR>
map  <C-w>n    :tabnew<CR>
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
vnoremap < <gv
vnoremap > >gv
if exists(":tnoremap")
  tnoremap <Esc> <C-\><C-n>
endif

au BufWinLeave ?* silent mkview  "save file foldmethod status
au BufRead ?* silent loadview    "load file foldmethod status
if has("autocmd")
  au BufReadPost * if line("'\"")>1 && line("'\"")<=line("$") | exe "normal! g'\"" | endif
endif

command! PlzW w !sudo tee %
