""""""""""""""""""""""""""""""""""""""""""""""""
" Title: Quick Abbreviations
" Author: Gene Ordanza II
" Email: gene.ordanza@gmail.com
" Description: Vim key mappings and abbreviations for HTML tags
" To avoid using abbreviation after the string -- Ctrl-v
" Note: If you want the abbreviation to only function when you're in Command
" mode, use ':cab'
""""""""""""""""""""""""""""""""""""""""""""""""

"                              Table of Contents
"                              -----------------

" DESC: Shortcuts for imports
" DESC: Shortcuts for writing JavaScript tags

" --------------------------------------------------------------------------

" Sourcing out web development languages
let $VIMREPO = '$HOME/Documents/gitrepo/config/vimdir'
source $VIMREPO/ab-css.vim

" Mappings for filetype HTML
" Create an opening and closing tag for an HTML element
"imap <leader>t <C-r>=MarkupHTML()<cr>

" DESC: Auto-complete for compound characters '{', '(', '<', '[', etc
"inoremap <silent> <TAB>   <C-R>=SmartComplete()<CR>

" For writing HTML tags
" ---------------------
" Top-level tags
:ab doctype> <!DOCTYPE html><esc>
:ab htcomment <!-- <+++> --><esc>
:ab title> <title><+++></title><esc>
:ab meta> <meta charset="UTF-8"><cr>

" Head Elements
:ab style> <style><cr></style><esc>
:ab script> <script <+++>><cr></script><esc>
:ab typecss> type="text/css"<esc>
:ab typejs> type="text/javascript"<esc>
:ab scripttype> <script type="<+++>"></script><esc>
:ab scriptsrc> <script src="<+++>"><cr></script><esc>
:ab css> <link rel="stylesheet" href="<+++>" /><esc>
:ab stylesheet> <link rel="stylesheet" href="<+++>" /><esc>

" Formatting tags
:ab h1> <h1></h1><esc>0f>
:ab h2> <h2></h2><esc>0f>
:ab h3> <h3></h3><esc>0f>
:ab h4> <h4></h4><esc>0f>
:ab h5> <h5></h5><esc>0f>
:ab h6> <h6></h6><esc>0f>
:ab b> <b></b><esc>0f>
:ab br> <br /><esc>o<left>
:ab p> <p></p><esc>0f>
:ab pc> <p class="<+++>"><+++></p><esc><C-j><esc>
:ab center> <center></center><esc>0f>
:ab code> <code><+++></code><esc>
:ab em> <em><+++></em><esc>
:ab strong> <strong></strong><esc>0f>
:ab small> <small></small><esc>0f>
:ab hr> <hr /><esc>o<left>
:ab pre> <pre><+++></pre><esc>
:ab span> <span><+++></span><esc>
:ab spanc> <span class="<+++>"><+++></span><esc><C-j><esc>

" List tags
:ab li> <li></li><esc>0f>
:ab lic> <li class="<+++>"><+++></li><esc>0<C-j><esc>
:ab ol> <ol><cr><tab><+++><cr><bs></ol><esc>
:ab olc> <ol class="<+++>"><cr><tab><+++><cr><bs></ol><esc>
:ab ul> <ul><cr><tab><+++><cr><bs></ul><esc>
:ab ulc> <ul class="<+++>"><cr><tab><+++><cr><bs></ul><esc>
:ab dl> <dl><cr><+++><cr></dl><esc>
:ab dt> <dt><+++></dt><esc>
:ab dd> <dd><+++></dd><esc>

" Table tags
:ab caption> <caption><+++></caption><esc>
:ab table> <table><cr><+++><cr></table><esc>
:ab thead> <thead><cr><+++><cr></thead><esc>
:ab tbody> <tbody><cr><+++><cr></tbody><esc>
:ab tfoot> <tfoot><cr><+++><cr></tfoot><esc>
:ab tr> <tr><cr><+++><cr></tr><esc>
:ab th> <th><+++></th><esc>
:ab thc> <th class="<+++>"><+++></th><esc>
:ab td> <td><+++></td><esc>
:ab tdc> <td class="<+++>"><+++></td><esc>
:ab col> <col <+++>><+++><esc>
:ab colgroup> <colgroup<+++>><cr><+++><cr></colgroup><+++><cr>
:ab colspan> colspan="<+++>"<esc>
:ab rowspan> rowspan="<+++>"<esc>

" Generic Block-level tags
:ab a> <a <+++>><+++></a><esc>
":ab div> <div><cr><tab><+++><cr><bs></div><esc>
:ab div> <div><cr></div><esc>O<tab><left>
:ab dc> <div class="<+++>"><cr><tab><+++><cr><bs></div><esc>
:ab did> <div id="<+++>"><cr><+++><cr></div><esc>
:ab c> class=""<esc><left>
:ab dcid> <div id="<+++>" class="<+++>"><cr><+++><cr></div><esc>
:ab img> <img src="<+++>" /><esc>
":ab imgj> <img src={<+++>} /><esc>
:ab imgc> <img src="<+++>" class="<+++>" /><esc>
:ab blockquote> <blockquote><+++></blockquote><esc>
":ab href> <a href="#" <+++>><+++></a><esc>0
:ab hrefc> <a class="<+++>" href="#"><+++></a><esc>0
:ab hrefj> <a href={<+++>}><+++></a><esc>0
:ab acronym> <acronym<+++>><+++></acronym><esc>0
:ab i> <i<+++>></i><esc>

:ab time> <time datetime="<+++>"><+++></time>

" HTML Document
" -------------
:ab dcelement document.createElement('div')<esc><0>
:ab getTagname <+++>.getElementsByTagName<esc>

" Classnames for React
" --------------------
:ab cn> className=""<esc><left>
":ab dcn> <div className="<+++>"><cr><tab><+++><cr><bs></div><esc>
:ab dcnj <div className={"<+++>"}><cr><+++><cr></div><esc>
:ab pcn> <p className="<+++>"><+++></p><esc>0
:ab spancn> <span className="<+++>"><+++></span><esc>0
:ab licn> <li className="<+++>"><+++></li><esc>0
:ab olcn> <ol className="<+++>"><cr><tab><+++><cr><bs></ol><esc>
:ab imgcn> <img src="<+++>" className="<+++>" /><esc>
:ab hrefcn> <a className="<+++>" href="#"><+++></a><esc>
:ab htc> <<+++> className="<+++>"><cr></<+++>><esc>
:ab ulcn> <ul className="<+++>"><cr><tab><+++><cr><bs></ul><esc>


" Forms and Labels
" ----------------
:ab form> <form <+++>><cr><tab><+++><cr><bs></form><esc>
:ab formc> <form class="<+++>"><cr></form><esc>
:ab formcid> <form id="<+++>" class="<+++>"><cr></form><esc>
:ab formget> <form method="GET" <+++>><cr></form><esc>
:ab formpost> <form method="POST" <+++>><cr></form><esc>
:ab fieldset> <fieldset><cr><+++><cr></fieldset><esc>
:ab legend> <legend><+++></legend><esc>
:ab label> <label<+++>><+++></label><esc>
:ab labelf> <label for="<+++>"><+++></label><esc>
:ab labelc> <label class="<+++>"><+++></label><esc>

" Element Attributes
" ------------------
:ab class> class="<+++>"<esc>
:ab src> src=""<esc><left>
:ab value> value=""<esc><left>
:ab vlaue value=""<esc><left>
:ab type> type=""<esc><left>
:ab name> name=""<esc><left>
:ab id> id=""<esc><left>
:ab for> for=""<esc><left>
:ab ph> placeholder=""<esc><left>
:ab href> href=""<esc><left>

:ab button> <button type="<+++>"<cr><tab><tab><tab><tab><+++> ><cr><bs><bs><bs><bs></button><esc>
:ab buttontype> <button type="<+++>" <+++>><cr></button><esc>
:ab buttonbtn> <button type="button" <+++>><cr></button><esc>
:ab textarea> <textarea <+++>><+++></textarea><esc>
:ab rows> rows=""<esc><left>
:ab cols> cols=""<esc><left>
:ab role> role=""<esc><left>
:ab select> <select <+++>><cr></select><esc>
:ab option> <option value="<+++>"><+++></option><esc>
:ab iframe> <iframe width='<+++>' height='<+++>' id='<+++>'></iframe><esc>


" For writing Handlebar templates
" --------------------------------------
:ab hb2 {{<+++>}}
:ab hb3 {{{<+++>}}}
:ab hb> {{<+++>}}<esc>
:ab hbif> {{#if <+++>}}<cr><+++><cr>{{/if}}<esc>
:ab hbeach> {{#each <+++>}}<cr><+++><cr>{{/each}}<esc>
:ab hbsection> {{#section <+++>}}<cr><+++><cr>{{/section}}<esc>
:ab hbdebug {{ debug "<+++>" }}
:ab hbspartials hbs.registerPartials(path.join(__dirname, 'partials'))<esc>
:ab hbshelper hbs.registerHelper("debug", value => console.log(value))<esc>


" For writing Flask/Handlebar/Django templates
" --------------------------------------------
:ab {{ {{ <+++> }}<esc>
:ab {{{ {{{ <+++> }}}<esc>
:ab {% {% <+++> %}<esc>
:ab for{ {% for <+++> in <+++> %}<cr><+++><cr>{% endfor %}
:ab if{ {% <+++> %}<cr><+++><cr>{% endif %}<esc>
:ab ifelse{ {% if <+++> %}<cr><+++><cr>{% else %}<cr><+++><cr>{% endif %}
:ab extend{ {% extends "<+++>" %}<esc>
:ab extends{ {% extends "<+++>" %}<esc>
:ab block{ {% block <+++> %}<cr><+++><cr>{% endblock %}<esc>
:ab include{ {% include "<+++>" %}<esc>
:ab with{ {% with <+++> %}<cr><+++><cr>{% endwith %}<esc>

" For writing ReactJS
" ===================
:ab rctgetid document.getElementById('root')
:ab r> <<+++>><esc>
:ab ht> <<+++>><cr></<+++>><esc>
:ab ht/> <<+++>><cr></<+++>><esc>
:ab likey> <li key={<+++>}><cr><tab><+++><cr><bs></li><esc><C-j><esc>
:ab divkey> <div key={<+++>}><cr><+++><cr></div><esc>
:ab rtform <form onSubmit={<+++>}><cr><tab><+++><cr><bs></form><esc>

" For writing Bootstrap CSS
" -------------------------
:ab bsxua> <meta http-equiv="X-UA-Compatible" content="IE=edge"><esc><up>
:ab bsviewport> <meta name="viewport" content="width=device-width, initial-scale=1"><esc><up>
:ab bscontainer <div class="container<+++>"><cr><+++><cr></div><tab><tab><!-- <+++> -->
:ab bsrow <div class="row"><cr><+++><cr></div><tab><tab><!-- <+++> -->
:ab bsjumbo <div class="jumbotron"><cr><+++><cr></div><esc>
:ab bsimg <img src="<+++>" class="img-<+++>" /><esc>
:ab bstable <table class="table table-<+++>"><cr><+++><cr></table><esc>
:ab bscf <div class="container-fluid"><cr><+++><cr></div><esc>
:ab bsalert <div class="alert alert-<+++>" role="alert"><cr><+++><cr></div><esc>
:ab bsidalert <div id="<+++>" class="alert alert-<+++>" role="alert"><cr><+++><cr></div><esc>
:ab bscol <div class="col-<+++>"><cr><+++><cr></div><esc>
:ab bsidcol <div id="<+++>" class="col-<+++>"><cr></div><esc>
:ab bsul <ul class="list-inline list-unstyled<+++>"><cr><+++><cr></ul><esc>
:ab bsimg <img src="<+++>" class="img-responsive">
:ab bsglyph <span class="glyphicon glyphicon-<+++>" aria-hidden="true"></span><esc>
:ab bstc text-center<esc>
:ab bslist class="list-inline list-unstyled<+++>"
:ab bsdivider <li role="separator" class="divider"></li>

" BS Button
:ab bsbtn class="btn btn-<+++>"<esc>
:ab bsbtnr class="btn btn-<+++>" role="button"<esc>
:ab bsdropdown class="btn btn-<+++> dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
:ab bsburger class="navbar-toggle collapsed" data-toggle="collapse" data-target="<+++>" aria-expanded="false"<esc>

" BS Navigation
:ab bsnav <nav class="navbar navbar-<+++>"><cr><+++><cr></nav><tab><tab><!-- <+++> -->
:ab bsdn <div class="navbar-<+++>"><cr><+++><cr></div><esc>

" BS Form
:ab bsform <form class="form-<+++>" method="<+++>"><cr><+++><cr></form><esc>
:ab bsformgrp <div class="form-group"><cr><+++><cr></div><esc>
:ab bsinputgrp <div class="input-group"><cr><+++><cr></div><esc>
:ab bsformctrl class="form-control"<esc>


" For EJS (Embedabble JavaScript) files
" -------------------------------------
:ab ejs <%- <+++> %><esc>

" Temporary settings
" ------------------
:ab ulpre> <ul><pre><+++><cr></pre></ul>
:ab kbd> <kbd><+++></kbd><esc>
:ab &lt> &lt;<+++>&gt;<esc>
:ab lihref> <li><a href="#"><+++></a></li><esc>
:ab tdhref> <td><a href="#"><+++></a></td><esc>
:ab dc*> <div class="<+++>"><cr><+++><cr></div><tab><tab><tab><!-- <+++> -->
:ab darg> <div <+++>><cr><+++><cr></div>
:ab ti> tabindex="-1"
:ab mark> <mark><+++></mark><esc>
:ab v> variant=""<esc><left>
:ab dflex d-flex
:ab dfelx d-flex
