""""""""""""""""""""""""""""""""""""""""""""""""
" Title: Vim abbreviations
" Author: Gene Ordanza II
" Email: gene.ordanza@gmail.com
" Description: Vim key mappings and abbreviations for Vim scripting
" To avoid using abbreviation after the string -- Ctrl-v
" Note: If you want the abbreviation to only function when you're in Command
" mode, use ':cab'
""""""""""""""""""""""""""""""""""""""""""""""""

:ab <expr>vifunc Vifunc()
":ab vifunc function! <+++>(<+++>)<cr><space><space><+++><cr><left><left>endfunction<esc>
:ab viif if <+++><cr><tab><+++><cr><bs>endif<esc>
:ab vifor for <+++><cr><tab><+++><cr><bs>endfor<esc>

" Source the current Vim config
:imap <leader>r <esc>:w \| source %<cr>
:nmap <leader>r <esc>:w \| source %<cr>
