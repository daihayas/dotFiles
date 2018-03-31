set number
set tabstop=4
set wrapscan
set hlsearch
set fenc=utf-8
inoremap <C-f> <C-o>l
inoremap <C-b> <C-o>h
inoremap <C-p> <C-o>k
inoremap <C-n> <C-o>j
inoremap <C-a> <C-o>^
inoremap <C-e> <C-o>$
imap <C-h> <BS>
inoremap <C-c> <Esc>
imap <C-o> <ESC>o
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
set expandtab
set shiftwidth=4


function! Expand_delete_line()
    if getline('.') == '' || matchstr(getline('.'), '.', col('.')) == ''
        normal gJ
    else
        normal d$$
    endif
endfunction

inoremap <silent><nowait> <C-k> <C-o>:<C-u>call Expand_delete_line()<CR>
