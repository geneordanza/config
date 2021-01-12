"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TITLE: User-defined functions
" DESC:  Custom functionality mostly for working with code
" LAST UPDATED: 18 Jul 2019
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"                              Table of Contents
"                              -----------------
" DESC: Shortcut for Javascript programming
" DESC: Shortcut React library
" DESC: Shortcut for writing HTML elements
" DESC: Shortcut for writing CSS rules
" DESC: Shortcut for TypeScript programming
" DESC: Shortcut for Unit Testing
" DESC: Shortcut for MongoDB programming

" -----------------------------------------------------------------------------

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DESC: Auto-computation for simple arithmetic
" NOTE: For simple computations, type '10+10' and then press Ctrl-A
"       and the mappings would would automatically compute the result.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
ino <C-A> <C-O>yiW<End>=<C-R>=<C-R>0<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DESC: Toggle highlighting feature when searching for a pattern, easier
"       to turn on/off and map to a key
" NOTE: Search for pattern and press <ctrl-n> to highlight pattern on/off
" MAP:  :nmap <silent> <C-n> <Esc>:call ToggleHLSearch()<Enter>
" ALTERNATE MAP: :map <F8> <Esc>:set nohlsearch!<enter>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! ToggleHLSearch()
   if &hls
      set nohls
   else
      set hls
   endif
endfunction

" An alternative to this function is to map the following key python scripting
" :map <F10> :w<CR>:!python %<CR>
function! RunPython()
   if getline(1) =~ "^#mod_python"
      !echo; elinks -dump http://gene.example.com/publisher/<afile>
   else
      !echo; python <afile>
   endif
endfunction


"if filereadable(expand("~/.vim/abbrevs.vim"))
"   source ~/.vim/abbrevs.vim
"endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DESC: Search function in Visual Mode
" NOTE: Visually select a string and press * to search forward or #
"       search backward. Pressing 'gv' will vimgrep the current selection
" MODE: [visual]
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

function! VisualSearch(direction) range
    let l:save_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:save_reg
endfunction

" Basically you press * to search forward or # (search backward) to search for
" the current selection.
vnoremap <silent> * :call VisualSearch('f')<CR>
vnoremap <silent> # :call VisualSearch('b')<CR>
vnoremap <silent> gv :call VisualSearch('gb')<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DESC: Show Day/Date/Time
" MODE: [normal]
" NOTE: Press <ctrl-d><ctrl-d> and Date/Time would be display at command line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! DateAndTime()
  echom "Date/Time: " . strftime("%c")
endfunction

nnoremap <c-d><c-d> :call DateAndTime()<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DESC: Reformat string with Underlines, Overlines, DoubleUnderline,
"       and Strikethrough
" NOTE: Select text/string visually, go to command mode (ie. press <esc>
"       then ':' and type Underline, Overline, etc)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! s:CombineSelection(line1, line2, cp)
  execute 'let char = "\u'.a:cp.'"'
  execute a:line1.','.a:line2.'s/\%V[^[:cntrl:]]/&'.char.'/ge'
endfunction

command! -range -nargs=0 Overline        call s:CombineSelection(<line1>, <line2>, '0305')
command! -range -nargs=0 Underline       call s:CombineSelection(<line1>, <line2>, '0332')
command! -range -nargs=0 DoubleUnderline call s:CombineSelection(<line1>, <line2>, '0333')
command! -range -nargs=0 Strikethrough   call s:CombineSelection(<line1>, <line2>, '0336')


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DESC: Create an opening and closing tag for an HTML element
" NOTE: Element name will come from user input
" MODE: [insert]
" MAP:  imap <leader>t <C-r>=MarkupHTML()<cr>
" OTHERS: Accept name of element from a user-input
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! MarkupHTML()
  let class = ' class="<+++>"'
  let className = ' className="<+++>"'

  let arguments = split(input("Enter HTML tag: "))
  let opener = "<" . arguments[0]
  let closer  = "</" . arguments[0] . ">" . "\<space>" . "\<esc>"

  if len(arguments) == 2 && arguments[1] == "cl"
    let tagStart = opener . class .  '>'
  elseif len(arguments) == 2 && arguments[1] == ".."
    let tagStart = opener . ' <+++>' . '>'
  elseif len(arguments) == 2 && arguments[1] == "js"
    let tagStart = opener . ' <+++>={<+++>}' . '>'
  elseif len(arguments) == 2 && arguments[1] == "value"
    let tagStart = opener . ' value={<+++>}' . '>'
  elseif len(arguments) >= 2 && arguments[1] == 'cl'
     \ && get(arguments, 2, 'NONE') == '..'
    let tagStart = opener . class . ' <+++>' . '>'
  elseif len(arguments) == 2 && arguments[1] == "cn"
    let tagStart = opener . className .  '>'
  elseif len(arguments) >= 2 && arguments[1] == 'cn'
      \ &&  get(arguments, 2, 'NONE') == ".."
    let tagStart = opener . className . ' <+++>' . '>'
  else
    let tagStart = opener . '>'
  endif

  if len(arguments) >= 2
    let retval = tagStart . "\<cr>\<tab><+++>\<cr>\<bs>" . closer
  else
    let retval = tagStart . "\<cr>"
                 \  . "\<tab>" . "<+++>" . "\<cr>"
                 \  . "\<bs>" . closer
  endif

  return retval
endfunction


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DESC: Auto-complete for compound characters '{', '(', '<', '[', etc
" NOTE: Useful for coding and regular text files
" MODE: [insert]
" MAP:  inoremap <silent> <TAB>   <C-R>=SmartComplete()<CR>
" URL:  https://developer.ibm.com/tutorials/l-vim-script-3/
" OTHERS: Use single <TAB> inline completion and double <TAB> for
"         carriage return between opening and closing character
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Table of completion specifications (a list of lists)...
let s:completions = []

" Function to add user-defined completions...
function! AddCompletion (left, right, completion, restore)
    call insert(s:completions, [a:left, a:right, a:completion, a:restore])
endfunction

let s:NONE = ""
" Table of completions...
"                    Left   Right    Complete with...       Restore
"                    =====  =======  ====================   =======
call AddCompletion(  '{',   s:NONE,  "}",                      1    )
call AddCompletion(  '{',   '}',     "\<CR>\<C-D>\<ESC>O",     0    )
call AddCompletion(  '\[',  s:NONE,  "]",                      1    )
call AddCompletion(  '\[',  '\]',    "\<CR>\<ESC>O\<TAB>",     0    )
call AddCompletion(  '(',   s:NONE,  ")",                      1    )
call AddCompletion(  '(',   ')',     "\<CR>\<ESC>O\<TAB>",     0    )
call AddCompletion(  '<',   s:NONE,  ">",                      1    )
call AddCompletion(  '<',   '>',     "\<CR>\<ESC>O\<TAB>",     0    )
call AddCompletion(  '"',   s:NONE,  '"',                      1    )
call AddCompletion(  '"',   '"',     "\\n",                    1    )
call AddCompletion(  "'",   s:NONE,  "'",                      1    )
call AddCompletion(  "'",   "'",     s:NONE,                   0    )

" Use mostly for Handlebar/Flask/etc Templating engines
"                    Left   Right    Complete with...       Restore
"                    =====  =======  ====================   =======
call AddCompletion(  '{{',  s:NONE,  "}}",                     1    )
call AddCompletion(  '{{',  '}}',    "\<CR>\<C-D>\<ESC>O",     0    )


" Implement smart completion magic...
function! SmartComplete ()
    " Remember where we parked...
    let cursorpos = getpos('.')
    let cursorcol = cursorpos[2]
    let curr_line = getline('.')

    " Special subpattern to match only at cursor position...
    let curr_pos_pat = '\%' . cursorcol . 'c'

    " Tab as usual at the left margin...
    if curr_line =~ '^\s*' . curr_pos_pat
        return "\<TAB>"
    endif

    " How to restore the cursor position...
    let cursor_back = "\<C-O>:call setpos('.'," . string(cursorpos) . ")\<CR>"

    " If a matching smart completion has been specified, use that...
    for [left, right, completion, restore] in s:completions
        let pattern = left . curr_pos_pat . right
        if curr_line =~ pattern
            " Code around bug in setpos() when used at EOL...
            if cursorcol == strlen(curr_line)+1 && strlen(completion)==1
                let cursor_back = "\<LEFT>"
            endif

            " Return the completion...
            return completion . (restore ? cursor_back : "")
        endif
    endfor

    " If no contextual match and after an identifier, do keyword completion...
    if curr_line =~ '\k' . curr_pos_pat
        return "\<C-N>"

    " Otherwise, just be a <TAB>...
    else
        return "\<TAB>"
    endif
endfunction

" Remap <TAB> for smart completion on various characters...
"inoremap <silent> <TAB>   <C-R>=SmartComplete()<CR>

" =============================================================================
" DESC: Shortcut for Javascript programming

" JS shortcut for const variable
function! JsConst()
  let l:args = input('variable name> ')
  return "const " . args . " =  \e0f=a "
endfunction

" JS shortcut for writing object literal
function! JsObj()
  let l:args = split(input('obj name, key/value: '))
  return "const " . args[0] . " = {\n"
         \ . args[1] . ": " . args[2] . ",\n"
         \ . "\<bs>}\e\k"
endfunction

" JS shortcut for writing regular functions
function! JsFunc()
  let l:args = split(input('function name + parameters: '))
  let l:funcName = "function " . args[0]
  let l:funcBody = " {\n}\eO"

  if len(args) >= 2
    let l:params = "(" . join(args[1:], ', ') . ")"
  else
    let l:params = "()"
  endif

  return funcName . params . funcBody
endfunction

" JS shortcut for writing class
function! JsClass()
  let l:args = split(input('class name: '))

  if len(args) == 1
    let l:className = "class " . args[0] . " {\n"
  elseif len(args) == 2
    let l:className = "class " . args[0] . " extends " . args[1] . " {\n"
  endif

  let l:classBody = "}\eO"

  return className . classBody
endfunction


" JS shortcut for class constructor
function! JsConstructor()
  let l:args = split(input('constructor parameters: '))
  let l:constructor = "constructor ("
  let l:constructBody = ") {\n}\eO"

  if len(args) >= 1
    let l:parameters = join(args[0:], ', ')
  else
    let l:parameters = ""
  endif

  return constructor . parameters . constructBody
endfunction

" JavaScript Class Method
function! Jscfunc()
  let l:args = split(input('class method name + parameters: '))
  let l:funcName = args[0]
  let l:funcBody = "{\n}\eO"

  if len(args) >= 1
    let l:parameters = "(" . join(args[1:], ', ') . ") "
  else
    let l:parameters = "()"
  endif

  return funcName . parameters  . funcBody
endfunction

" Javascript map() function
function! Jsmap()
  let l:args = split(input('array name, first element: '))
  return  args[0] . ".map(" . args[1] . " =>" . ")\e0f>"
endfunction

" Javascript forEach() function
function! JsforEach()
  let l:args = split(input('array name, first element: '))
  return  args[0] . ".forEach(" . args[1] . " =>" . ")\e0f>"
endfunction
"

" Javascript find() function
function! Jsfind()
  let l:args = split(input('array name, first element: '))
  return  args[0] . ".find(" . args[1] . " =>" . ")\e0f>"
endfunction

" Javascript filter() function
function! Jsfilter()
  let l:args = split(input('array name, first element: '))
  return  args[0] . ".filter(" . args[1] . " =>" . ")\e0f>"
endfunction

" Javascript push() function
function! Jspush()
  let l:args = split(input('array name, first element: '))
  return  args[0] . ".push(" . args[1] . ")\e0$"
endfunction

" Javascript shortcut for  'new Promise'
function! Jsnp()
  let l:args = input('> ')
  return "const " . args . " = new Promise((resolve, reject) => )\e0$"
endfunction

function! Jsexport()
  let l:args = input('export> ')
  return "export { \n"
         \ . "}\eO" . args . "\e0$"
endfunction

" JS shortcut for toFixed(val) string
function! JsFix()
  return "toFixed(2)\e0f)"
endfunction
" =============================================================================
" DESC: Shortcut React library

" Import React Hooks
function! RtHooks()
  let l:args = split(input('hooks: '))
  return "import React, { " . join(args[0:], ', ') . " } from \'react\'\e$"
endfunction

" React Functional Component using arrow function
function! RtCn()
  let l:args = split(input('Component name + parameters: '))
  let l:funcName = "const " . args[0]

  if len(args) == 1
    let l:params = " = () => "
  elseif len(args) == 2 && args[1] == 'c'
    let l:params = " = () => "
  elseif len(args) >= 2 && args[1] != 'c'
    let l:params = " = (" . join(args[1:], ', ') . ") => "
  elseif len(args) >= 3 && args[1] == 'c'
    let l:params = " = (" . join(args[2:], ', ') . ") => "
  endif

  if len(args) >= 2 && args[1] == 'c'
    let l:funcBody = "{\n}\eO"
  else
    let l:funcBody = "(\n)\eO\t"
  endif

  return funcName . params . funcBody
endfunction

" React Class Component
function! Rtclass()
  let l:var = input('class name> ')
  return "class " . var . " extends React.Component {\n}\eO"
endfunction

" React Hooks useState
function! RtState()
  let l:args = split(input('state modifier initialState: '))
  let l:params = "const [ " . join(args[0:1], ', ') . " ]"

  if len(args) >= 3
    let l:init = " = useState(" . join(args[2:]) . ")\e0"
  else
    let l:init = " = useState()\e0"
  endif

  return  params . init
endfunction

" React Hooks Reducer
function! RtReducer()
  let l:args = split(input('Reducer name + first case> '))
  return "const " . args[0] . " = (state, action) => {\n"
         \ . "switch (action.type) {\n"
         \ . "case " . join(args[1:]) . ": \n"
         \ . "default: return state \n}"
         \ . "\n\<bs>}\e3ko\t"
endfunction

" React Hooks useEffect
function! RtEffect()
  let l:dependecies = input('useEffect: ')

  return "useEffect(() => {\n"
         \ . "}, [" . dependecies . "])\eko"
endfunction

" React Hooks useReducer
function! RtuseReducer()
  let l:args = split(input('[state, dispatcher] reducer initState> '))
  let l:params = "[ " . args[0] . ", " . args[1] . " ]"

  if len(args) >= 3
    let l:init = " = useReducer(" . join(args[2:], ', ') . ")\e0"
  else
    let l:init = " = useReducer()\e0"
  endif

  return "const " . params . init
endfunction

" Custom JS mapping for React
function! Rtcontext()
" let l:args = split(input('variable, create/use, args> '))
" return "const " . args[0] . " = " . args[1] . "Context(" . join(args[2:]) . ")\e$"

  let l:args = split(input('create/use, args> '))
  return "const " . "= " . args[0] . "Context(" . join(args[1:]) . ")\e0ft"
endfunction

" Custom JS mapping for React
function! Rtmap()
  let l:args = split(input('array name, value> '))
  return "{" . args[0] . ".map(" . args[1] . " => " . ")}\e0f>"
endfunction

" React arrow function inside class
function! Rtcfunc()
" let l:args = split(input('name, args>'))
" return args[0] . " = " . join(args[1:]) . " =>\ea"

  let l:args = split(input('function name, parameter: '))
  let l:funcName = args[0]

  if len(args) == 1
    let l:params = " = () => "
  elseif len(args) == 2 && args[1] == 'c'
    let l:params = " = () => "
  elseif len(args) >= 2 && args[1] != 'c'
"   let l:params = " = " . join(args[1:]) . " => "
    let l:params = " = (" . join(args[1:], ', ') . ") => "
  elseif len(args) >= 3 && args[1] == 'c'
"   let l:params = " = " . join(args[2:]) . " => "
    let l:params = " = (" . join(args[2:], ', ') . ") => "
  elseif len(args) >= 4 && args[1] == 'c'
    let l:params = " = " . join(args[2:]) . " => "
  endif

  if len(args) >= 2 && args[1] == 'c'
    let l:funcBody = "{\n}\eO"
  else
    let l:funcBody = "(\n)\eO\t"
  endif

  return funcName . params . funcBody
endfunction

function! Rtprovider()
  let l:args = split(input('Context Provider + value: '))
  let l:startTag = "<" . args[0] . ".Provider "
                   \ . "value={" . join(args[1:])
                   \ . "}>\n"
  let l:endTag = "</" . args[0] . ".Provider>"
  return startTag . endTag . "\eO\t "
endfunction

" =============================================================================
" DESC: Shortcut for Unit Testing

function! Jsdescribe()
  let l:desc = input('describe: ')
  let l:test = input('test: ')

  return "describe(\"" . desc . "\", () => {\ntest(\"". test . "\", "
         \ . "() => {" . "\n})\n\b})\e\<Up>O"
endfunction

function! Jstest()
  let l:var = input('> ')
  return "test(\"" . var . "\", () => {\n" . "})\eO"
endfunction

" =============================================================================
" DESC: Shortcut React Native library

" Import React Hooks
function! Rnimport()
  let l:args = input('> ')
  return "import React, { " . args . " } from \'react-native\'"
endfunction

" =============================================================================
" DESC: Shortcut for writing HTML elements
" HTML generic elements. Beginning and ending element are horizontally aligned.
function! Htag()
  let l:args = split(input('tag name> '))
  let l:text = input('text> ')

  let l:tagStart = "<" . args[0]
  let l:tagEnd = "</" . args[0] . ">\e0f>"

  if len(args) >= 2
    let l:class = " className=\"" . join(args[1:]) . "\">"
    let l:tagStart = tagStart . class
  else
    let l:tagStart = tagStart . ">"
  endif

  return tagStart . text . tagEnd
endfunction

" HTML generic elements. Beginning and ending element are vertically aligned.
" Defined as <leader>t ('t' as in tag element) not as regular inoremap
function! Vtag()
  let l:args = split(input('tag> '))
  let l:raw_text = split(input('text> '))
  let l:beginTag = "<" . args[0]
  let l:closeTag = "\n\b</" . args[0] . ">\e0kk$"

  if len(raw_text) >= 1
    let l:text = "\n\t".join(raw_text[0:])
  else
    let l:text = "\n\t<+++>"
  endif

  if len(args) >= 3 && args[-1] == ".."
    let l:beginTag = beginTag . " className=" . "\"" . join(args[1:-2]) . "\">"
  elseif len(args) == 2 && args[-1] == ".."
    let l:beginTag = beginTag . ">"
  elseif len(args) >= 2
    let l:beginTag = beginTag . " className=" . "\"" . join(args[1:]) . "\">"
  elseif len(args) == 1
    let l:beginTag = beginTag . ">"
  endif

  return beginTag . text . closeTag

endfunction

" HTML shortcut for writing Javascript variable quote 'var="<insert>"'
function! Htq()
  let l:args = split(input('variable/value> '))
  return args[0] . "=" . "\"" . join(args[1:]) . "\"\e"
endfunction

" HTML shortcut for Javascript expression within React "var={<insert>}"
function! Htj()
  let l:args = split(input('> '))

  if len(args) == 2 && args[-1] == "s"
    let l:expression = "={" . args[0] . "\}\e"
  elseif len(args) >= 2
    let l:expression = "={" .  join(args[1:]) . "}\e"
  else
    let l:expression = "={}\e"
  endif

  return args[0] . expression
endfunction


" HTML input element
function! Input()
" let l:args = split(input('type and placeholder: '))
" return "<input type=" . "\"" . args[0] . "\""
"        \ . "\n\/>\eO\t\t\t placeholder=" . "\"" . join(args[1:]) . "\"\e"

  " 'type' parameter required
  let l:args = split(input('input (type/name/value/onChange/placeholder)> '))
  let text = "<input type=" . "\"" . args[0] . "\""

  " 'name' parameter required
  if args[1] != ".."
    let l:text = text . "\n\/>\eO\t\t\t name=" . "\"" . args[1] . "\""
  endif

  " 'value' parameter optional
  if args[2] != ".."
"   let l:text = text . "\nvalue=" . "\"" . args[2] . "\""
    let l:text = text . "\nvalue={" .  args[2] . "}"
  endif

  " 'onChange' parameter optional
  if args[3] != ".."
"   let l:text = text . "\nonChange=" . "\"" . args[3] . "\""
    let l:text = text . "\nonChange={" . args[3] . "}"
  endif

  " 'placeholder' parameter optional
  if args[4] != ".."
    let l:text = text . "\nplaceholder=" . "\"" . join(args[4:]) . "\""
  endif
  return text

endfunction

" HTML element attribute for data- and aria-
function! Da()
  let l:args = split(input('> '))
" return args[0] . "-" . args[1] . "=" . "\"" . join(args[2:]) . "\"\e"
  return "data-" . args[0] . "=" . "\"" . join(args[1:]) . "\"\e"
endfunction

" HTML img element with JavaScript expression
function! Img()
" let l:var = input('> ')
" return "<img src={" . var . "} alt=\"..\" \/>\e0f/"
  let l:args = split(input('src image> '))
  let l:text = ""

  if len(args) >= 2
    let l:text = join(args[1:])
  endif

  return "<img src={" . args[0] . "} alt=\"" . text . "\" \/>\e0f}"
endfunction

" HTML hyperlink tak
function! Href()
  let l:args = split(input('href value> '))
  let l:text = input('text> ')

" let l:startTag = "<a href=\"#\""
" let l:endTag = "</a>\e0f#"
  let l:startTag = "<a href={" . join(args[0:]) . "}"
  let l:endTag = "</a>\e0f#"

  if len(args) >= 3
    let l:class = " className=\"" . join(args[0:]) . "\">"
    let l:startTag = startTag . class
  else
    let l:startTag = startTag . ">"
  endif

  return startTag . text . endTag
endfunction

" HTML Form tag
function! Form()
" let l:args = split(input('form onSubmit> '))
  let l:args = input('form onSubmit> ')
  let l:beginTag = "<form"
" let l:textTag  = "\n\t<+++>"
  let l:closeTag = "\n</form>\eO\t"

  if len(args) > 1
    let l:beginTag = beginTag . " onSubmit={" . args . "}>"
  else
    let l:beginTag = beginTag . ">"
  endif

  return beginTag . closeTag
endfunction

" React <li> element with key value
function! LiKey()
  let l:args = input('key value> ')
  let l:beginTag = "<li key={" . args . "}>"
  let l:closeTag = "\n</li>\eO\t"
  return beginTag . closeTag
endfunction

" =============================================================================
" DESC: Shortcut for writing CSS rules
" use \n (for new line) instead of <cr> and \e for <esc>
function! Csobj()
  let args = split(input('class name: '))
  return "" . join(args[0:]) . " {\n}\eO"
endfunction

" Shortcut for writing inline CSS rules within React component
function! Rtstyle()
  let args = split(input('> '))
  return "style={{ " . args[0]. ": \"" . args[1] . "\" }}\e0"
endfunction


" =============================================================================
" DESC: Shortcut for TypeScript programming

" Create an TypeScript interface
" use \n (for new line) instead of <cr> and \e for <esc>
function! Tsinterface()
  let args = split(input('> '))

  if len(args) == 1
    let l:tsvar = args[0]
  elseif len(args) >= 1
    let l:tsvar = args[0] . ' extends ' . args[1]
  endif

  return "interface " . tsvar . " {\n}\eO"
endfunction

" TypeScript Class Component
function! Tsclass()
  let l:var = input('class name> ')
  return "class " . var . " extends React.Component<Props, State> {\n}\eO"
endfunction

" Create TypeScript array
" use \n (for new line) instead of <cr> and \e for <esc>
function! Tsarray()
  let var = input('> ')
  return "Array <" . var . ">"
endfunction

" TypeScript function which includes type annotations
" skip the 'function' keyword
function! Tsfunc()
  let l:args = split(input('function name> '))
  let l:retType = split(input('return type> '))

" let l:funcName = "function " . args[0]
  let l:funcName = args[0]
  let l:body = " {\n}\eO"

  if len(retType) >= 1
    let l:retValue = ": " . join(retType[0:])
  else
    let l:retValue = ""
  endif

  if len(args) >= 2
    let l:params = "(" . join(args[1:]) . ")" . retValue
  else
    let l:params = "()" . retValue
  endif

  return funcName . params . body

endfunction

" TypeScript function which includes type annotations
" add the 'function' keyword
function! FTsfunc()
  let l:args = split(input('function name> '))
  let l:retType = split(input('return type> '))

  let l:funcName = "function " . args[0]
" let l:funcName = args[0]
  let l:body = " {\n}\eO"

  if len(retType) >= 1
    let l:retValue = ": " . join(retType[0:])
  else
    let l:retValue = ""
  endif

  if len(args) >= 2
    let l:params = "(" . join(args[1:]) . ")" . retValue
  else
    let l:params = "()" . retValue
  endif

  return funcName . params . body

endfunction

" =============================================================================
" DESC: Shortcut for MongoDB programming

" MongoDB 'find' command
function! Mgfind()
  let l:args = split(input('> '))
  return "db." . args[0] . ".find({" . args[1] . ":}).pretty()\e0f:"
endfunction

" MongoDB 'insert' command
function! Mginsert()
  let l:args = split(input('> '))
  return "db." . args[0] . ".insert({" . args[1] . ": \'"
         \ . args[2] . "\'})\e0f}"
endfunction

" MongoDB 'update' command
function! Mgupdate()
  let l:args = split(input('> '))
  return "db." . args[0] . ".update({" . args[1] . ":})\e0f:"
endfunction


" =============================================================================
" ** DEPRECATED **
" inoremap <expr>dcn> Dcn()
" HTML div element with className
function! Dcn()
  let l:var = input('> ')
  return "<div className=\"" . var . "\">\n<\/div>\eO\t"
endfunction

" ** DEPRECATED **
" inoremap <expr>hcn> Hcn()
" HTML header elements for React (ie. className)
function! Hcn()
  let l:args = split(input('> '))
  let l:text = join(args[2:])
  return "<".args[0]." className=\"".args[1]."\">".text."<\/".args[0].">\e0f>"
endfunction

" =============================================================================
" Shortcut for VimScript languages
function! Vifunc()
  let args = input('>')
  return "function\! ".args."()\<cr>endfunction\eO"
endfunction

" =============================================================================
"
"                               ** DEPRECATED **
"                               ----------------

" inoremap <expr>hc> Hc()
" HTML header elements (ie. class)
function! Hc()
  let l:args = split(input('> '))
  let l:text = join(args[2:])
  return "<".args[0]." class=\"".args[1]."\">".text."<\/".args[0].">\e0f>"
endfunction

function! Input2()
" let l:args = split(input('type and placeholder: '))
" return "<input type=" . "\"" . args[0] . "\""
"        \ . "\n\/>\eO\t\t\t placeholder=" . "\"" . join(args[1:]) . "\"\e"
endfunction
