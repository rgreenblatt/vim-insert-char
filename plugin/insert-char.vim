function! <SID>InsertChar(char, count)
  return repeat(a:char, a:count)
endfunction

nnoremap <silent> <Plug>InsertChar :<C-U>exec "normal i".<SID>InsertChar(nr2char(getchar()), v:count1)<CR>
nnoremap <silent> <Plug>InsertCharAfter :<C-U>exec "normal a".<SID>InsertChar(nr2char(getchar()), v:count1)<CR>

if !exists('g:insert_char_no_default_mapping') || (g:insert_char_no_default_mapping == 0)
  nmap <Space> <Plug>InsertChar
end
