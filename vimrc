" Name: Gene Ordanza II
" Email: gene.ordanza@gmail.com
" Description: Personal VIM settings for programming and text editing
" Language: HTML/CSS/JS, Python, C, Bash, and Vimscript
" Last Major Revision: 30 July 2019
" Packages: vim-minimal, vim-common, vim-enhanced, vim-X11

""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Variable Settings
""""""""""""""""""""""""""""""""""""""""""""""""
let $VIMDIR = '$HOME/.vimdir'
let $VIMREPO = '$HOME/Documents/gitrepo/config/vimdir'

""""""""""""""""""""""""""""""""""""""""""""""""
" General Vim Settings
""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible    " Disable original vi-compatability
filetype on         " Detect the type of file #
filetype plugin on  " Load filetype plugin on #
set fileformats=unix,dos,mac    " Automatically detect fileformat in this order
set showmode        " Show status message if in Insert or Command mode
set expandtab       " Convert tab character to spaces
set hlsearch        " Highlight all search items
set incsearch       " Jump to highlighted search pattern as you type them
set autoindent      " Copy indent from current line when starting a new line
set smartindent     " An indent is automatically inserted:
                    "   - After a line ending in '{'.
set autowrite       " Automatically save before commands like :next and :make
set autoread        " Automatically read the file again when changed outside of vim
set visualbell      " Silence the bell, use a flash instead
set noswapfile
set wildmenu        " Let you see what other options you have when using <Tab>
set wildmode=longest,list   " Autocomplete file name you trying to open
set lbr!            " word-wrap of words at the end of the line
set history=1000    " Last 1000 commands/search patterns used within vim
set hidden          " When using :e <newfile>, only hides the buffer not close it
set ignorecase      " ignorecase and smartcase are good combo, with
                    " smartcase 'on', if there's any upper-case char in
                    " search pattern, it will go to case-sensitivity
set smartcase       " 'on', if there's a any upper-case char in search pattern,
					" vim will assume you really want case-sensitivity
set mouse=a         " Enable mouse to resize window partitions and click on tabs
set number          " Show line number when file is opened
set showmatch		" Show matching brackets/braces/parantheses.
set background=dark " Theme/Colors-related settings, 'dark' is easier on the eyes
set guifont=Sans\ 12 " Font to use for Vim GUI settings
"set shortmess=atI   " Shorten messages to avoid 'press a key' prompt


""""""""""""""""""""""""""""""""""""""""""""""""
" Text Formatting/Layout
""""""""""""""""""""""""""""""""""""""""""""""""
syntax on           " syntax highlighting turn on by default
set textwidth=80    " Set a maximum of 80 characters on each line
set wrapmargin=80   " Automaticall break lines when longer the 80 chars
set tabstop=4       " Set tabstop to 4 spaces
set shiftwidth=4    " Set spaces used for (auto)indent
set ruler           " Always show current position at the buttom of the file
set splitbelow      " Open new split windows below the current one
set showcmd         " Show (partial) command in status line.
set ff=unix         " Convert DOS line ending (^M) to Unix format

" Verbose info on the statusline
set statusline=%n\ %1*%h%f%*\ %=%<[%3lL,%2cC]\ %2p%%\ 0x%02B%r%m
set laststatus=2    " Display title bar at the bottom of the file
set rulerformat=%h%r%m%=%f  " sane value in case laststatus is off
set scrolloff=1     " at least 1 lines of code are visible around cursor
set splitright      " Set vertical split to open on the right side (default is left)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Vim settings for reading/writing files
" $VIMREPO/mapping.vim for keystroke mappings
" $VIMREPO/abbrevs.vim for abbreviations use for commonly misspelled words
" $VIMREPO/vfunctions.vim for user-defined functions
" Automatically strip all trailing whitespace before saving the file
" Convert tab characters to spaces
" Set tab to 4 spaces for all file type
" Change to directory of current file
" Save text fold upon exit
" Load saved/stored view fold
" Jump to previous cursor position when opening existing file
"   (see online help :h last-position-jump)
" Read example at https://github.com/vim/vim/blob/master/runtime/filetype.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:augroup general_config
:  autocmd!
:  au BufRead,BufNewFile * source $VIMREPO/mapping.vim
:  au BufRead,BufNewFile * source $VIMREPO/abbrevs.vim
:  au BufRead,BufNewFile * source $VIMREPO/vfunctions.vim
:  au BufWritePre * :%s/\s\+$//e
:  au BufRead,BufNewFile * set expandtab
:  au Filetype * setlocal ts=4 sts=4 sw=4 expandtab
:  au BufEnter * cd %:p:h
":  au BufWinLeave * mkview
":  au BufWinEnter * silent loadview
:  au BufReadPost *
        \   if line("'\"") > 1 && line("'\"") <= line("$")
        \|      exe "normal! g'\""
        \|  endif
:augroup END


""""""""""""""""""""""""""""""""""""""""""""""""
" Web-development settings and Autocommands (HTML/CSS/JS files)
" .hbs files are for Handlerbars templating
"  - set tab spaces for files with extension *.hbs (Handlbars templating)
"  - set html syntax highlighting for *.hbs files
" .ts, .tsx for TypeScript, TS JSX
" .ejs are for Embedabble JavaScript files
" .mjs are for (newer) Node.js files use for ES modules
""""""""""""""""""""""""""""""""""""""""""""""""
:augroup web_development
:  autocmd!
:  au BufRead,BufNewFile *.html,*.ejs source $VIMREPO/ab-html.vim
:  au BufRead,BufNewFile *.css  source $VIMREPO/ab-css.vim
:  au BufRead,BufNewFile *.js   source $VIMREPO/ab-javascript.vim
:  au Filetype html setlocal ts=2 sts=2 sw=2 expandtab
:  au Filetype css  setlocal ts=2 sts=2 sw=2 expandtab
:  au Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab

:  au BufRead,BufNewFile *.js,*.ejs set syntax=javascript

:  au BufRead,BufNewFile *.ts,*.tsx setlocal ts=2 sts=2 sw=2 expandtab
:  au BufRead,BufNewFile *.ts,*.tsx source $VIMREPO/ab-javascript.vim
:  au BufRead,BufNewFile *.ts,*.tsx set syntax=javascript

:  au BufRead,BufNewFile *.hbs,*.ejs,*.mjs setlocal ts=2 sts=2 sw=2 expandtab
:  au BufRead,BufNewFile *.hbs,*.ejs source $VIMREPO/ab-html.vim
:  au BufRead,BufNewFile *.hbs,*.ejs set syntax=html

:  au BufRead,BufNewFile *.mjs source $VIMREPO/ab-javascript.vim
:  au BufRead,BufNewFile *.mjs set syntax=javascript
:augroup END

" set tab spaces for files with extension *.mjs (newer node files)
" and then set javascript syntax highlighting for *.mjs files
" ts = 'number of spaces that <Tab> in file uses' sts = 'number of spaces that
" <Tab> uses while editing' sw = 'number of spaces to use for (auto)indent step'
" 'expandtab' expands all tabs to spaces. sts (softtabstop) inserts spaces and
" tabs for indents: as many tabs as will fit in the indent based on the size of
" tabstop, and then spaces after that. Of course, if expandtab is on, all the
" tabs that get inserted are converted to spaces.


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Python-specific Autocommands
" Include the following setting at line 1 when creating new Python script
" Source ab-python when opening new or existing Python file
" Set tab to 4 spaces
" Give Python script execute permission
" Convert tab characters to spaces
" BadWhitespace is for editing Python source code
" Flag lines that begins with tab when editing Python files - bad formatting
" Flag lines that ends with whitespace when editing Python files - bad format
" Set the line numbering when opening Python script
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:augroup python_language
:  autocmd!
": au bufnewfile *.py call setline(1,'#!/usr/bin/python')
:  au BufRead,BufNewFile *.py source $VIMREPO/ab-python.vim
:  au Filetype python setlocal ts=4 sts=4 sw=4 expandtab
:  au BufNewFile   *.py silent! !chmod u+x %
:  au BufRead,BufNewFile *.py,*.pyw set expandtab
:  au BufRead,BufNewFile *.py match BadWhitespace /^\t\+/
:  au BufRead,BufNewFile *.py match BadWhitespace /\s\+$/
:  au BufRead,BufNewFile *.py set nu
:augroup END

highlight BadWhitespace ctermbg=red guibg=red


""""""""""""""""""""""""""""""""""""""""""""""""
" Bash Scripting-specific Autocommands
"  - Include the Bash path at line 1 and shell script executable
"  - Make Bash script executable
" Vim Scripting-specific Autocommands
"  - set tabstop to 2 spaces
" C-specific Settings and Autocommands
""""""""""""""""""""""""""""""""""""""""""""""""
:augroup system_languages
:  autocmd!
:  au BufNewFile *.sh  call setline(1,'#!/bin/bash')
:  au BufNewFile *.sh  !chmod u+x %
:  au BufRead,BufNewFile *.vim source $VIMREPO/ab-vim.vim
:  au BufRead,BufNewFile *.vim setlocal ts=2 sts=2 sw=2 expandtab
:  au BufRead,BufNewFile *.c,*.h,*.c++ set noexpandtab
:  au BufRead,BufNewFile *.c,*.h  source $VIMREPO/ab-c.vim
:  au FileType c,cpp,h :set cindent
:augroup END


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Skeleton code when writing new html file, Dockerfiles
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:augroup skeleton_files
:  autocmd!
:  au BufNewFile *.html,*htm 0r $VIMREPO/skel/skel.html
:  au BufNewFile Dockerfile  0r $VIMREPO/skel/skel-dockerfile
:augroup END


" Set the omni-completion function for various languages where text can be
" auto-completed based on the current context.  Pressing ctrl-x ctrl-o will show
" suggestion for autocompletion.  You can also use ctrl-n
:au FileType python runtime! autoload/pythoncomplete.vim
:au FileType html runtime! autoload/htmlcomplete.vim
:au FileType css runtime! autoload/csscomplete.vim
:au FileType javascript runtime! autoload/javascriptcomplete.vim


""""""""""""""""""""""""""""""""""""""""""""""""
" Settings for VIM interface
""""""""""""""""""""""""""""""""""""""""""""""""
set fillchars=vert:\ ,stl:\ ,stlnc:\

""""""""""""""""""""""""""""""""""""""""""""""""
" Twitter Account
""""""""""""""""""""""""""""""""""""""""""""""""
let twitvim_login="redmoon2009:test123"

""""""""""""""""""""""""""""""""""""""""""""""""
" For testing new settings
""""""""""""""""""""""""""""""""""""""""""""""""
"set verbose=5 " Use for trouble-shooting new settings


" Auto-Completion using Dictionary Lookup
set dictionary+=/usr/share/dict/words
" Note: Make sure that the package 'words' is installed.
let g:explHideFiles='^\.,.*\.pyc$'


" Pathogen configuration settings
" -------------------------------
"filetype plugin indent on
" execute pathogen#infect()


" Plugin: vim-airline, vim-airline-theme
" Installation:
"   mkdir ~/.vim/aucd ~/.vim/
" Themes: ~/.vim/bundle/vim-airline-themes/autoload/airline/themes
" --------------------------------------
"" set t_Co=256        " Enable 256 color terminal
"" let g:airline_theme='wombat'   " color theme
"" let g:airline#extensions#tabline#buffer_nr_show = 1
" let g:airline#extenstions#tabline#buffer_idx_mode = 1
"let g:airline_theme='molokai'   " color theme
"let g:airline#extensions#tabline#enabled = 1

" Plugin: vim-javascript
"let g:javascript_plugin_jsdoc = 1

" Temporary Vim settings.  For trial/testing use only
" If I wish to set files with *.ejs extensions to use HTML bindings/syntax
"au BufNewFile,BufRead *.ejs set filetype=html
" JavaScript, ECMAScript
"au BufNewFile,BufRead *.js,*.javascript,*.es,*.jsx,*.mjs   setf javascript
":au FileType python      :iabbrev <buffer> iff if:<left>
":au FileType javascript  :iabbrev <buffer> iff if ()<left>
