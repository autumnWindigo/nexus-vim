vim.cmd([[
    set number relativenumber
    set go=a
    set mouse=a
    set nohlsearch
    set clipboard+=unnamedplus
    set noshowmode
    set noruler
    set laststatus=0
    set noshowcmd
    set expandtab
    set tabstop=4
    set encoding=utf-8
    set shiftwidth=4
    set updatetime=1000
    map <F2> :retab <CR> :wq! <CR>
    autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
]])

vim.cmd([[
    autocmd BufWritePre * let currPos = getpos(".")
    autocmd BufWritePre * %s/\s\+$//e
    autocmd BufWritePre * %s/\n\+\%$//e
    autocmd BufWritePre *.[ch] %s/\%$/\r/e
    autocmd BufWritePre * cal cursor(currPos[1], currPos[2])
]])

vim.cmd.au("CursorHold <buffer> lua vim.lsp.buf.hover()")
