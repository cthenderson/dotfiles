function! s:Sql(start, finish)
  execute "!sqsh -C \"$(sed -n " . a:start . "," . a:finish . "p " . expand('%:p') . ")\" -m vert"
endfunction

command! -nargs=* Sql :call s:Sql(<f-args>)
