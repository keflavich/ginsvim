" tells vim not to automatically reload changed files
set noautoread 

function! DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction

" sets up mappings to function

com! DiffSaved call DiffWithSaved()
map <Leader>ds :DiffSaved<CR>

