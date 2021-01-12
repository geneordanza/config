""""""""""""""""""""""""""""""""""""""""""""""""
" Title: Quick Abbreviations for CSS files
" Author: Gene Ordanza II
" Email: gene.ordanza@gmail.com
" Description: Vim abbreviations for CSS keywords
" To avoid using abbreviation after the string -- Ctrl-v
" Note: If you want the abbreviation to only function when you're in Command
" mode, use ':cab'
""""""""""""""""""""""""""""""""""""""""""""""""

"                              Table of Contents
"                              -----------------
"
" DESC: Shortcuts for CSS Tags
" DESC: Shortcuts for CSS settings with default values
" DESC: Shortcuts for Flexbox Settings
" DESC: Shortcuts for horizontal alignment of items
" DESC: Shortcuts for vertical alignment of items
" DESC: Shortcuts for Vertically align individual items
" DESC: Miscellaneous Settings

" ==========================================================================

" DESC: Shortcuts for CSS Tags
" ----------------------------
:ab csc color:
:ab csd display:
:ab csf float: left;<esc><up>
:ab csh height:
:ab csl left:
:ab cst top:
:ab csr right:
:ab csw width:
:ab csv visibility:
:ab csz z-index: 1;<esc><up>
:ab cstd text-decoration:
:ab cstdn text-decoration: none;<esc>0
:ab cstdu text-decoration: underline;<esc>0
:ab csfs font-<+++>
:ab csfw font-weight:
:ab csti text-indent:
:ab csto text-overflow:
:ab csts text-shadow:
:ab cstt text-transform:
:ab csb border:
:ab csbn border: none;<esc>
:ab csbb border-bottom:
:ab csbc border-color:
:ab csbl border-left:
:ab csbr border-radius:
:ab csbs border-sizing: border-box;<esc>
:ab csbt border-top:
:ab csbw border-width:
:ab csbg background:
:ab csbgc background-color:
:ab csbgs background-style:
:ab cstr table-row
:ab cstl table-layout:
:ab csp padding:
:ab cspl padding-left:
:ab cspr padding-right:
:ab cspb padding-bottom:
:ab cspt padding-top:
:ab csof overflow: hidden;<esc><up>
:ab csofx overflow-x:
:ab csofy overflow-y:
:ab csm margin:
:ab csmt margin-top:
:ab csmb margin-bottom:
:ab csml margin-left:
:ab csmr margin-right:
:ab csmh <+++>-height: <+++>
:ab csmw <+++>-width: <+++>
:ab csan animation-name:
:ab csad animation-duration:
:ab csws white-space:
:ab cslh line-height:
:ab csww word-wrap:
:ab csls list-style:
:ab cslsn list-style: none;<esc><up>
:ab cscc column-count:
:ab cscw column-width:
:ab cscg column-gap:
:ab cscr column-rule:
:ab csnth <+++>:nth-of-type(<+++>)<esc><up>
:ab csclear clear: both;<esc><up>


" DESC: Shortcuts for CSS settings with default values
" ----------------------------------------------------
:ab csff font-family: "Helvetica", "Arial", sans-serif;<esc>0

:ab csta text-align:
:ab cstac text-align: center;<esc>
:ab cstar text-align: right;<esc>
:ab cstal text-align: left;<esc>

:ab csbsolid border: 1px solid <+++><esc><up>
:ab csauto margin: 0 auto;                  /* center align the container */<esc><up>
:ab csmauto margin: 0 auto;                  /* center align the container */<esc><up>
:ab csdflex display: flex;                  /* Flexbox container */<esc><up>

:ab cspos position:
:ab csposabs position: absolute;<esc><up>
:ab csposrel position: relative;<esc><up>
:ab csposfix position: fixed;<esc><up>

:ab csboxsizeb box-sizing: border-box;<esc><up>
:ab csmedia @media only screen and (<+++>-width: <+++>) {<cr><+++><cr>}
:ab csfont font: Helvetica, Arial, sans-serif;<esc>
:ab csfonts font: Helvetica, Arial, sans-serif;<esc>

" DESC: Shortcuts for Flexbox Settings
" ------------------------------------
:ab csdflex display: flex;                  /* Flexbox container */<esc>0
:ab csdf display: flex;                  /* Flexbox container */<esc>0
:ab csdb display: block;<esc>0
:ab csdi display: inline;<esc>0
:ab csdib display: inline-block;<esc>0
:ab csdn display: none;<esc>0
:ab csflex flex:

:ab csfd flex-direction:
:ab csfdc flex-direction: column;         /* render items below vertically */<esc>0
:ab csfdr flex-direction: row;            /* render items below horizontally */<esc><up>

" DESC: Shortcuts for horizontal alignment of items
" -------------------------------------------------
:ab csjc justify-content:
:ab csjcc justify-content: center;        /* horizontal aligment - center */<esc>0
:ab csjcfs justify-content: flex-start;    /* horizontal alignment - left */<esc>0
:ab csjcfe justify-content: flex-end;      /* horizontal alignment - right */<esc>0
:ab csjcsa justify-content: space-around;  /* horizontal align - space around items */<esc>0
:ab csjcsb justify-content: space-between; /* horizontal align - space between items */<esc>0

" DESC: Shortcuts for vertical alignment of items
" -----------------------------------------------
:ab csai align-items:
:ab csaic align-items: center;            /* vertical alignment - center */<esc>0
:ab csaifs align-items: flex-start;        /* vertical alignment - top */<esc>0
:ab csaife align-items: flex-end;          /* vertical alignment - bottom */<esc>0
:ab csais align-items: stretch;           /* vertical alignment - stretch item */<esc><up>
:ab csaib align-items: baseline;<esc><up>

:ab csfww flex-wrap: wrap;                /* items will wrap if necessary */<esc>0

" Customize the order of individual elements
:ab cso order:

" DESC: Shortcuts for Vertically align individual items
" ---------------------------------------
:ab csas align-self:
:ab csasfs align-self: flex-start;
:ab csasfe align-self: flex-end;

:ab csac align-content:
:ab csacsb align-content: space-between;<esc><up>

:ab cspc place-content:

" DESC: Miscellaneous Settings
" ----------------------------
:ab cscomment /* <+++> */<esc>0<C-j><esc>
:ab csdebug border: 3px solid red;        /* for debugging */<esc>
:ab cslayout * {<cr><tab>margin: 0;<cr>padding: 0;<cr>box-sizing: border-box;<cr><left><left>}<esc>
