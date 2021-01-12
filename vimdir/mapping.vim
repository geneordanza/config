""""""""""""""""""""""""""""""""""""""""""""""""
" Title: Keystroke Mappings
" Author: Gene Ordanza II
" Email: gene.ordanza@gmail.com
" Description: Vim keystrokes mapping to specific function keys
" map  - map keys in normal, visual, and operator-pending mode
" cmap - handles command-line mappings
" imap - handles insert-only mappings
" nmap - map keys in normal-mode only
" omap - map key in operator-pending mode only
" vmap - map key in visual-mode only
" <CR> -- Carriage Return for Maps
" <ESC> -- Escape
" <BAR> -- | pipe
" <BACKSPACE> -- Backspace
" <C-f> -- Control-F
" <C-w> -- Control-W
""""""""""""""""""""""""""""""""""""""""""""""""

"                              Table of Contents
"                              -----------------
" DESC: JavaScript Shortcuts
" DESC: React Shortcuts
" DESC: HTML shortcut
" DESC: CSS shortcut
" DESC: TypeScript shortcut
" DESC: MongoDB shortcut
" DESC: Run script (Node/Python/Typescript/Bash/Mongo) inside Vim

" ------------------------------------------------------------------------------

let $VIMDIR = "$HOME/Documents/gitrepo/config/vimdir/"

" (By default, the mapleader variable is set to '\' key)
" press '\a' to go on normal mode.
" press '\c' in [insert-mode] to cancel file but save before quitting buffer
" press '\c' in [normal-mode] to cancel file but save before quitting buffer
" press '\d' in [insert-mode] to cycle through list of dictionary words
" press '\d' in [normal-mode] to open scratch pad
" press '\d' in [normal-mode] to open scratch pad
" press '\e' in [normal-mode] to save and reload file
" press '\e' in [insert-mode] to save and reload file
" press '\q' in [insert-mode] to save and quit file
" press '\q' in [normal-mode] to save and quit file
" press '\s' in [insert-mode] to save file
" press '\s' in [normal-mode] to save file
" press '\z' in [normal-mode] to open bash terminal (type 'exit' to go back)
" press '\"' in [normal-mode] to place " around a string
" press '\t' in [insert-mode] to create an opening/closing HTML tag
:inoremap <leader>a <Esc>
:inoremap <leader>c <esc>:w\|bd<cr>
:nnoremap <leader>c <esc>:w\|bd<cr>
:inoremap <leader>d <c-x><c-k>
:nnoremap <leader>d <Esc>:tabe ~/Public/delete.txt<cr>
:inoremap <leader>e <Esc>:w!\|e<cr>
:nnoremap <leader>e <Esc>:w!\|e<cr>
:inoremap <leader>q <esc>:w\|x<cr>
:nnoremap <leader>q <esc>:w\|x<cr>
":inoremap <leader>s <Esc>:w\|<esc>0
:inoremap <leader>s <Esc>:w<cr>
:nnoremap <leader>s <Esc>:w<cr>
:nnoremap <leader>z :shell<cr>
:nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel

" press <space> in [normal-mode] to move one screen forward
"   (alternative to control-f)
" press ';' in [normal-mode] to check open files in the buffer
" press <backspace> or delete (OSX) to delete the previous word and the
"   space before it.
" press - to toggle between split windows
" press <tab> to toggle between tab windows.
" press 'v' to highlight a word.  Press 'v' again to un-highlight
" press 'gi' to insert a char and revert back to command mode
" press 's' to view spelling suggestions.
" type 'qa' in [command-mode] to quit all buffers
:nnoremap <space> <pagedown>
:nnoremap  ; :ls<enter>
:nnoremap <bs> bdw
:nnoremap - <c-w>w
:nnoremap <tab> gt
:nnoremap v viw
:nnoremap  gi i<space><esc>r
:nnoremap  s z=
:cnoremap qa qa!<space>

" press <Ctrl-n> in insert-mode to save current buffer and go to next one
" press <Ctrl-h> in normal-mode to go previous file in the buffer
" press <Ctrl-l> in normal-mode to go next file in the buffer

":imap <C-n> <esc>:w\|bnext<cr>     " messes-up with word auto-completion
:nnoremap <C-h> :bprevious<cr>
:nnoremap <C-l> :bnext<cr>


" ----------

" DESC: Toggle highlighting feature when searching for a pattern, easier
"       to turn on/off and map
" MODE: [normal]
:nnoremap <silent> <C-n> <Esc>:call ToggleHLSearch()<Enter>

" ----------

" DESC: Auto-complete for compound characters '{', '(', '<', '[', etc
" MODE: [insert]
" OTHERS: Use single <TAB> inline completion and double <TAB> for
"         carriage return between opening and closing character
inoremap <silent> <TAB>   <C-R>=SmartComplete()<CR>

" ----------

"  DESC: Move cursor to '<+++>' placeholder
"  MODE: [normal] and [insert]
"  NOTE: Use to together with various mappings in ab-html.vim.  Press <Ctrl-J>
"        to jump to first placeholder, delete placeholder, and go to insert
"        mode.
set nohls
nnoremap <c-j> /<+.\{-1,}+><cr>c/+>/e<cr>
inoremap <c-j> <esc>/<+.\{-1,}+><cr>c/+>/e<cr>

" ----------

" DESC: Scroll window by 3 lines
" MODE: [normal] and [visual]
" press <C-e> to scroll window 3 lines downward (scroll faster)
" press <C-y> to scroll window 3 lines upward (scroll faster)
" press <C-e> in visual to scroll window 3 lines downward (scroll faster)
" press <C-y> in visual to scroll window 3 lines upward (scroll faster)

nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
vnoremap <C-e> 3<C-e>
vnoremap <C-y> 3<C-y>

" ----------

" DESC: Mapping for long lines that has been 'wrap'. Instead of moving
"       the to next display line that contain the wrapped text, you go to
"       the line below your cursor.
" MODE: [normal]
" The above mapping will non-recursively map k to gk (vice versa) and with j in
" normal mode only.  What this means is that now k and j will move display line.
" If you want to move by physical lines, use gk and gj instead.

nnoremap k gk
nnoremap j gj
nnoremap gk k
nnoremap gj j

" ----------

" DESC: Display previously run commands in command-mode
" MODE: [command]
" In Command mode ':' you can use Ctrl-K in-lieu of Up-Arrow key
" In Command mode ':' you can use Ctrl-J in-lieu of Down-Arrow key

:cnoremap <C-k>  <Up>
:cnoremap <C-j>  <Down>

" ----------

" DESC: Quick open for various Vim config files
" type 'vab' in [command-mode] to open $VIMDIR/abbrevs.vim
" type 'vac' in [command-mode] to open $VIMDIR/ab-css.vim
" type 'vah' in [command-mode] to open $VIMDIR/ab-html.vim
" type 'vaj' in [command-mode] to open $VIMDIR/ab-javascript.vim
" type 'vam' in [command-mode] to open $VIMDIR/mapping.vim
" type 'vav' in [command-mode] to open $VIMDIR/vfunctions.vim

:cnoremap vab :e $VIMDIR/abbrevs.vim<cr>
:cnoremap vac :e $VIMDIR/ab-css.vim<cr>
:cnoremap vah :e $VIMDIR/ab-html.vim<cr>
:cnoremap vaj :e $VIMDIR/ab-javascript.vim<cr>
:cnoremap vam :e $VIMDIR/mapping.vim<cr>
:cnoremap vav :e $VIMDIR/vfunctions.vim<cr>
":cmap soh source<space>$VIMDIR/ab-html.vim
":cmap soa source<space>$VIMDIR/abbrevs.vim

" ----------

" Mapping while in Visual Mode
vmap f :fold<cr>
" While in visual mode, press 'f' to fold the highlighted line.
" NOTE : To unfold the line, press 'zo'.  If you bookmark a line prior to
" folding it, it automatically 'unfolds' when you go back to it using '~<mark>'

" Mapping the command gm (use for moving to middle of the line)
:nnoremap gm :call cursor(0, len(getline('.')) / 2)<cr>


"***  Add a comment
" :map ,mkc i/* */<Left><Left><Left>
:imap <F12> <CR>GoDate: <Esc>:read !date<CR>kJ <Esc>i




" -- Additional Note on Remapping --
" You can also prevent a key from being remapped by using the :noremap command,
" or :inoremap, :onoremap, etc. This can be useful if you want to set a mapping
" using map, but want that key to be used for something else in
" operator-pending mode, or something like that. Despite the name, you can
" override a noremap command while in Vim.
"

" Marking Headlines
" -----------------
:map h1 yypVr=o
:map h2 yypVr-o
:map h3 :s/\(.*\)/-\1-/<cr>o
" For headline 1, use '===' below the headline.
" For headline 2, use '---' below the headline.
" yy     :Yank current line
" p      :Paste the copied line
" v      :Select the entire line
" r      :Replace selected characters with another (in this case = or -)
" o      :Add a new line below the cursor and place the cursor in insert mode
" :s///  :The substitution command
" \(.*\) :Regular expression that takes all characters in the current line
" -\1-   :The replacement pattern. It tells vim to insert dash followed by the
"        :first matched sub-pattern (everything between \( and \) ) from the
"        :above search, followed by another dash.


" DESC: Find the search result and move it to top of the screen. 'n' to
"       move forward and 'N' to move backward
nnoremap n nzt
nnoremap N Nzt
xnoremap n nzt
xnoremap N Nzt

" DESC: Move to line that was marked 'a 'b 'c to 'e and then move line
"       to top of screen
nnoremap 'a 'azt
nnoremap 'b 'bzt
nnoremap 'c 'czt
nnoremap 'd 'dzt
nnoremap 'e 'ezt

" DESC: JavaScript Shortcuts
" ==========================
" Write a JavaScript expression inside React Component "var={<insert>}"
inoremap <expr>jsconst JsConst()  " JS shortcut for writing const variable
inoremap <expr>jscosnt JsConst()
inoremap <expr>jcosnt JsConst()
inoremap <expr>jscons JsConst()
inoremap <expr>jscont JsConst()
inoremap <expr>jsonst JsConst()
inoremap <expr>jcsont JsConst()
inoremap <expr>jsocnst JsConst()
inoremap <expr>sjconst JsConst()
inoremap <expr>sjcosnt JsConst()
inoremap <expr>jsont JsConst()
inoremap <expr>jscost JsConst()

inoremap <expr>jsobj JsObj()      " JS shortcut for writing object literal
inoremap <expr>jsfunc JsFunc()    " JS shortcut for writing regular functions
inoremap <expr>jsufnc JsFunc()    " JS shortcut for writing regular functions
inoremap <expr>sjfunc JsFunc()    " JS shortcut for writing functions
inoremap <expr>jsclass JsClass()  " JS shortcut for writing class
inoremap <expr>jsconstruct JsConstructor() " JS shortcut for class constructor
inoremap <expr>jscosntruct JsConstructor() " JS shortcut for class constructor
inoremap <expr>jscfunc Jscfunc()  " JS shortcut for writing class method
inoremap <expr>jsmap Jsmap()      " JS shortcut for array method map
inoremap <expr>jsmpa Jsmap()      " JS shortcut for array method map
inoremap <expr>jsfind Jsfind()    " JS shortcut for array method find
inoremap <expr>jsfilter Jsfilter()  " JS shortcut for array method filter
inoremap <expr>jspush Jspush()    " JS shortcut for array method push
inoremap <expr>jsnp Jsnp()        " JS shortcut for new Promise
inoremap <expr>jsforeach JsforEach()      " JS shortcut for array method forEach
inoremap <expr>jsfe JsforEach()           " JS shortcut for array method forEach
inoremap <expr>jsexport Jsexport()        " JS shortcut for export object
inoremap <expr>jsexp Jsexport()           " JS shortcut for export object
inoremap <expr>jsfix JsFix()              " JS shortcut for toFixed(val) string
inoremap <expr>jsdescribe Jsdescribe()    " JS unit testing, describe method
inoremap <expr>jstest Jstest()    " JS unit testing, test method


" DESC: React Shortcuts
" =====================
inoremap <expr>rthooks RtHooks()  " import react
inoremap <expr>rtcn RtCn()        " React Functional Component (arrow function)
inoremap <expr>rtclass Rtclass()  " React Class Component
inoremap <expr>rtst RtState()     " React Hooks useState
inoremap <expr>rtstate RtState()  " React Hooks useState
inoremap <expr>rtcontext Rtcontext()       " React Hooks for create/use Context
inoremap <expr>rtreducer RtReducer()       " React Hooks useState
inoremap <expr>rtusereducer RtuseReducer() " React Hooks useReducer
inoremap <expr>rteffect RtEffect()         " React Hooks useEffect
inoremap <expr>rtmap Rtmap()               " Custom JS mapping for React
inoremap <expr>rtcfunc Rtcfunc()           " React arrow function inside class
inoremap <expr>rtvalue Rtprovider()        " React Hooks Provider
inoremap <expr>rtprovider Rtprovider()     " React Hooks Provider

" DESC: React Native Shortcuts
" ============================
inoremap <expr>rnimport Rnimport()         " import react-native

" DESC: HTML shortcut
" ===================
inoremap <leader>t <C-r>=Vtag()<cr>
inoremap <expr>ht> Htag()         " HTML generic elements/tag (horizontal)
inoremap <expr>htq Htq()          " HTML variable with quotes
inoremap <expr>htj Htj()          " HTML variable for JavaScript expression
inoremap <expr>i> Input()         " HTML input elements
inoremap <expr>d> Da()            " HTML element for data attributes aria and data
inoremap <expr>img> Img()         " HTML image element
inoremap <expr>a> Href()          " HTML anchor/href element
inoremap <expr>f> Form()          " HTML form element
inoremap <expr>likey LiKey()      " HTML li element with React key value

" DESC: CSS shortcut
" ==================
" Shortcut for writing CSS rules
inoremap <expr>csobj Csobj()
inoremap <expr>csojb Csobj()
inoremap <expr>csboj Csobj()

" Shortcut for writing inline CSS rules writing React Component
inoremap <expr>rtstyle Rtstyle()

" DESC: TypeScript shortcut
" =========================
inoremap <expr>tsiface Tsinterface()       " TypeScript interface
inoremap <expr>jsiface Tsinterface()       " TypeScript interface
inoremap <expr>tsclass Tsclass()           " TypeScript class
inoremap <expr>tsfunc Tsfunc()             " Typescript function signature
inoremap <expr>ftsfunc FTsfunc()           " Typescript function signature
inoremap <expr>tsarray Tsarray()           " Typescript array


" DESC: MongoDB shortcut
" ======================
inoremap <expr>mgfind Mgfind()
inoremap <expr>mginsert Mginsert()
inoremap <expr>mgupdate Mgupdate()

" DESC: Run script (Node/Python/Typescript/Bash/Mongo) inside Vim
" ===============================================================

" Run current node file
":map <leader>r <Esc>G<Esc>:re!clear;echo;node %<cr>
":imap <leader>r <Esc>G<Esc>:re!clear;echo;node %<cr>

" Run TypeScript on the current JS file
":map <leader>r <Esc>:!clear;tsc %<cr>
":imap <leader>r <Esc>:!clear;tsc %<cr>

" Run current python file
":map <leader>r <Esc>:!clear;python3.6 %<cr>
":imap <leader>r <Esc>:!clear;python3.6 %<cr>

" Run mongo script inside file
":map <leader>r <Esc>G<Esc>:re!clear;mongo < %<cr>
":imap <leader>r <Esc>G<Esc>:re!clear;mongo < %<cr>

" Run Sqlite3 script inside file
:map <leader>r <Esc>G<Esc>:re!clear;sqlite3 test.db  < %<cr>
:imap <leader>r <Esc>G<Esc>:re!clear;sqlite3 test.db < %<cr>

" Open another tab (file)
":map <leader>t <Esc>:tabe
":imap <leader>t <Esc>:tabe
":map <leader>tab <Esc>:tabe<space>

"  Special key combo for writing abbreviations with placeholders
"  -------------------------------------------------------------
"  Magical incantation; basically by pressing c-j in normal/insert mode it will
"  jump to a placeholder <+++>, delete it, and go to insert mode.

" To be deleted (20 Jul 2019)
" press <Ctrl-C> (first) to save file (second) to exit file.
" press <Ctrl-Z> to open a terminal - type 'fg' to revert back to previous file.
":map  <C-Z><enter> :shell
":map  <C-Z> :shell<cr>
