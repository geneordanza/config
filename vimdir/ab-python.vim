""""""""""""""""""""""""""""""""""""""""""""""""
" Title: Quick Abbreviations
" Author: Gene Ordanza II
" Email: gene.ordanza@gmail.com
" Description: Vim key mappings and abbreviations
" To avoid using abbreviation after the string -- Ctrl-v
" Note: If you want the abbreviation to only function when you're in Command
" mode, use ':cab'
""""""""""""""""""""""""""""""""""""""""""""""""

" Python shortcuts
"-----------------

:ab popenr open('<+++>')<esc>
:ab popenw open('<+++>', 'w')<esc>
:ab pdict dict(<+++>=<+++>)<esc>
:ab pfrom from <+++> import <+++><esc>
:ab pclass class <+++>:<cr><tab><+++><esc>
:ab plcass class <+++>:<cr><tab><+++><esc>
:ab pcarg class <+++>(<+++>):<cr><tab><+++><esc>
:ab pcobj class <+++>(object):<cr><+++><esc>
:ab pdef def <+++>(<+++>):<cr><tab><+++><esc>
:ab pdself def <+++>(self<+++>):<cr><tab><+++><esc>
:ab pif if <+++>:<cr><tab><+++><esc>
:ab pifeq if <+++> == <+++>:<cr><tab><+++><esc>
:ab piftrue if <+++> == <+++>:<cr><+++><esc>
:ab pifelse if <+++>:<cr><+++><cr>else:<cr><+++><esc>
:ab pifelif if <+++>:<cr><+++><cr>elif <+++>:<cr><+++><esc>
:ab pd__ def __<+++>__(self<+++>):<cr><tab><+++><esc>
:ab pcinit class <+++>:<cr><tab>def __init__(self<+++>):<cr><tab><+++><esc>
:ab pinit def __init__(self<+++>):<cr><tab><+++><esc>
:ab prepr def __repr__(self):<cr><tab><+++><esc>
:ab prerp def __repr__(self):<cr><tab><+++><esc>
:ab psetattr def __setattr__(self<+++>):<cr><tab><+++><esc>
:ab pgetattr def __getattr__(self<+++>):<cr><tab><+++><esc>
:ab pgetitem def __getitem__(self<+++>):<cr><tab><+++><esc>
:ab pifmain if __name__ == '__main__':<cr><tab><+++><esc>
:ab pmain def main():<esc>
:ab pwtrue while True:<esc>
:ab praw  raw_input(<+++>)
:ab pself self.<+++> = <+++>
:ab pslef self.<+++> = <+++>
:ab s. <Left>self<esc>
:ab s- self.<esc>
:ab self_ self.__<+++>__<+++><esc>
:ab __ __<+++>__<+++><esc>
:ab ptexcept try: <+++><cr>except <+++>: <+++><esc>
:ab ptfinally try: <+++><cr>finally: <+++><esc>
:ab ptefinally try: <+++><cr>except <+++>: <+++><cr>finally: <+++><esc>
:ab pdebug print ('\n----- debugging -----\n')<esc>
:ab pimysql import MySQLdb<esc>
:ab pmconnect MySQLdb.connect(host=<+++>, user=<+++>, passwd=<+++>)<esc>
:ab pcomment """<cr><+++><cr>"""<esc>

" Modules and Library Functions
:ab socket. SocketServer<esc>
:ab tcps  TCPServer<esc>
:ab streamr StreamRequestHandler<esc>
:ab tmix ThreadingMixIn<esc>
:ab fmix ForkingMixIn<esc>
:ab sokcet socket
:ab socekt socket
:ab thread. thread.start_new(<+++>)<esc>

" Django shortcuts
" ----------------

:ab fdjango from django.<+++> import <+++>
:ab mmodel <Left>models.Model):
:ab mchar models.CharField(max_length=<+++>)
:ab mdate models.DateField(<+++>)
:ab mfor models.ForeignKey(<+++>)
:ab mint models.IntegerField(<+++>)
:ab murl models.URLField()<esc>
:ab mmany models.ManyToManyField(<+++>)
:ab memail models.EmailField()<esc>
:ab rhttp return HttpResponse(<+++>)
:ab fchar forms.CharField()
:ab femail forms.EmailField(required=False)

" Google AppEngine Shortcuts
" --------------------------
:ab gapimport from google.appengine<+++> import <+++>
:ab gapgql db.GqlQuery("<+++>")<esc>
:ab gapdbmodel db.Model<esc>
:ab gapdbuser db.UserProperty()<esc>
:ab gapdbstring db.StringProperty()<esc>
:ab gapdbinteger db.IntegerProperty()<esc>
:ab gapdbool db.BooleanProperty()<esc>
:ab gapdbdate db.DateTimeProperty()<esc>
:ab gapdbreference db.ReferenceProperty(<+++>)<esc>
:ab gapdbblob db.BlobProperty()<esc>
:ab gapredirect self.redirect("<+++>")<esc>

" Google WebApp Framework
" --------------------------
:ab gaprh <Left>RequestHandler<esc>
:ab gapc class <+++>(webapp.RequestHandler):<cr><+++><esc>
:ab gapapp application = webapp.WSGIApplication(<+++> debug=True)<esc>
:ab gapwsgi webapp.WSGIApplication(
:ab gap'/' [('/', <+++>)], debug=True)<esc>
:ab gapcgi wsgiref.handlers.CGIHandler().run(application)<esc>
:ab gapwrite self.response.out.write(<+++>)<esc>
:ab gapheaders self.response.headers["Content-Type"] = <+++>
:ab gapimage self.output_image(<+++>)<esc>
:ab gapget self.request.get(<+++>)<esc>
:ab gapuser self.get_current_user()<esc>
:ab gaplogout users.create_logout_url("<+++>")<esc>
:ab gaprunwsgi run_wsgi_app(<+++>)<esc>

" Modules and various methods for HTML and XML Processing
:ab fminidom from xml.dom import minidom<esc>
:ab fetree from xml.etree import ElementTree<esc>
:ab pielementtree from xml.etree.ElementTree import ElementTree<esc>
:ab uopen urllib.urlopen(<+++>)<+++><esc>
:ab htmlparser HTMLParser<esc>

" Quick Abbreviation for parsing XML
" ----------------------------------
:ab xmltag <left>getElementsByTagName("<+++>")<esc>
:ab xmlhas <left>hasAttribute("<+++>")<esc>
:ab xmlget <left>getAttribute("<+++>")<esc>
:ab xmlcdoc <left>createDocument(<+++>)<esc>
:ab xmldelement <left>documentElement<esc>
:ab xmlcelement <left>createElement("<+++>")<esc>
:ab xmlachild <left>appendChild(<+++>)<esc>
:ab xmlrchild <left>removeChild(<+++>)<esc>
:ab xmlcnode <left>childNodes<esc>
:ab xmlctnode <left>createTextNode<esc>

" Quick Abbreviation for Unit Testing study
" -----------------------------------------
:ab pitest from unittest import TestCase, main<esc>
:ab pctest class <+++>(TestCase):<cr><space><space><space><space><+++><esc>
:ab ptestequal self.assertEquals(<+++>)<esc>
:ab ptestnotequal self.assertNotEqual(<+++>)<esc>
:ab ptesttrue self.assertTrue(<+++>)<esc>
:ab ptestfalse self.assertFalse(<+++>)<esc>

" Python Expression Shortcuts
" ---------------------------
:ab [-   [<+++>]<esc>
:ab (- (<+++>)<esc>
:ab {-  {<+++>}<esc>
:ab {_    {<enter>}<esc><up><up><up><cr>
