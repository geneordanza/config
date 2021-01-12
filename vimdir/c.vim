
""""""""""""""""""""""""""""""""""""""""""""""""
" General settings for C Language
""""""""""""""""""""""""""""""""""""""""""""""""
let $VIMDIR = '$HOME/Dropbox/Configs/Vim'

set tabstop=5     " Set tabstop to 3 spaces
set shiftwidth=5  " Set spaces used for (auto)indent

""""""""""""""""""""""""""""""""""""""""""""""""
" C-specific Settings and Autocommands
""""""""""""""""""""""""""""""""""""""""""""""""
:au BufRead,BufNewFile *.c,*.h,*.c++ set noexpandtab
:au BufRead,BufNewFile *.c,*.h  source $VIMDIR/ab-c.vim
:au BufRead,BufNewFile *.c,*.h  set nu
:au FileType c,cpp,h :set cindent

