""""""""""""""""""""""""""""""""""""""""""""""""
" Title: JavaScript Quick Abbreviations
" Author: Gene Ordanza II
" Email: gene.ordanza@gmail.com
" Description: Vim key mappings and abbreviations for JavaScript
" To avoid using abbreviation after the string -- Ctrl-v
" Note: If you want the abbreviation to only function when you're in Command
" mode, use ':cab'
""""""""""""""""""""""""""""""""""""""""""""""""

"                              Table of Contents
"                              -----------------

" DESC: Shortcuts for imports
" DESC: Shortcuts for writing JavaScript tags
" DESC: Shortcuts for writing HTML DOM Elements
" DESC: Shortcuts for writing JS Classes/Object/Prototypes
" DESC: Shortcuts for writing Functional JavaScript
" DESC: Shortcuts for writing ES6 JavaScript
" DESC: Shortcuts for writing ReactJS Library
" DESC: Shortcuts for writing React Hooks
" DESC: Shortcuts for writing React Router
" DESC: Shortcuts for writing TypeScript
" DESC: Shortcuts for writing Redux
" DESC: Shortcuts for writing Node.js/Express
" DESC: Shortcuts for writing JSON Tags
" DESC: Shortcuts for writing Mocha/Karma Test
" DESC: Shortcuts for writing Firebase utilities
" DESC: Shortcuts for writing jQuery tags
" DESC: Miscellaneous Shortcuts

" --------------------------------------------------------------------------

" Sourcing out web developement languages
let $VIMREPO = '$HOME/Documents/gitrepo/config/vimdir'
source $VIMREPO/ab-html.vim
source $VIMREPO/ab-css.vim


" DESC: Shortcuts for imports
" ---------------------------
:ab jsimport import <+++> from '<+++>'<esc>0<C-j><esc>
:ab jsiport import <+++> from '<+++>'<esc>0<C-j><esc>
:ab jsimort import <+++> from '<+++>'<esc>0<C-j><esc>
:ab jsimporto import { <+++> } from '<+++>'<esc>0<C-j><esc>
:ab jsipath import path from 'path'<esc>0
:ab jsiaxios import axios from 'axios'<esc>0
:ab jsidebug import DBG from 'debug'<esc>0
:ab jsiexpress import express from 'express'<esc>0
:ab rtreact import React from 'react'<esc>o<esc><left>i
:ab rtreactdom import ReactDOM from 'react-dom'<esc>0
:ab rtreactanddom import React from 'react'<cr>import ReactDOM from 'react-dom'<esc>0
:ab rthooks import React, { <+++> } from 'react'<esc>0<C-j><esc>
:ab rtrouter import { <+++> } from 'react-router-dom'<esc>0<C-j><esc>
:ab rtreouter import { <+++> } from 'react-router-dom'<esc>0<C-j><esc>
:ab rxistore import { createStore } from 'redux'<esc>
:ab rxicreducers import { combineReducers } from 'redux'<esc>
:ab rxicombine import { combineReducers } from 'redux'<esc>
:ab rxiprovider import { Provider } from 'react-redux'<esc>
:ab rxiconnect import { connect } from 'react-redux'<esc>
" Import for Node.js
:ab ndexpress import express from 'express'<cr>const app = express()<esc>O<esc><left>
:ab ndreq const = require('<+++>')<esc>0ft
:ab ndfs const fs = require('fs')<esc>0
:ab ndhttp const http = require('http')<esc>0
:ab ndutil const util = require('util')<esc>0
:ab ndurl const url = require('url')<esc>0
:ab ndpath const path = require('path')<esc>0


" DESC: Shortcuts for writing JavaScript tags
" -------------------------------------------
:ab jsstrict "use strict"<esc>
:ab cosnt const<esc>
":ab jsconst const = <+++><esc>0ft
":ab jscosnt const = <+++><esc>0ft
":ab jcosnt const = <+++><esc>0ft
":ab jscons const = <+++><esc>0ft
":ab jscont const = <+++><esc>0ft
":ab jsonst const = <+++><esc>0ft
":ab jcsont const = <+++><esc>0ft
":ab jsocnst const = <+++><esc>0ft
":ab sjconst const = <+++><esc>0ft
":ab sjcosnt const = <+++><esc>0ft
":ab jsont const = <+++><esc>0ft
":ab jscost const = <+++><esc>0ft
:ab jsconsto const { <+++> } = <+++><esc>0<C-j><esc>
:ab jscosnto const { <+++> } = <+++><esc>0<C-j><esc>
:ab jsconsta const [<+++>] = <+++><esc>0<C-j><esc>
:ab jsobj const <+++> = {<cr><+++><cr>}<esc>0<C-j><esc>
:ab jslet let = <+++><esc>0ft
:ab jselt let = <+++><esc>0ft
:ab jsvar var = <+++><esc>0fr
:ab jsnew const = new <+++>()<esc>0ft
:ab jsarray let <+++> = [<+++>]<esc>0
:ab jsif if ()<esc><left>
:ab jsfi if ()<esc><left>
:ab jsifc if (<+++>) {<cr><+++><cr>}
:ab jsfor for (let <+++>=<+++>) <cr><+++><esc>
:ab jsforin for (let <+++> in <+++>)<cr><+++><esc>
:ab jsforof for (let <+++> of <+++>)<cr><+++><esc>
:ab jsforlength for (let <+++>; <+++>.length; <+++>) <cr><+++><esc>
:ab jswhile while (<+++>)<+++><esc>
:ab jsswitch switch (<+++>) {<cr><+++><cr>}
:ab jscase case <+++>:<cr><tab><+++><esc><Up>0<C-j><esc>
:ab jscse case <+++>:<cr><+++><esc>
:ab jstry try {<cr>}<esc>O
:ab jscatch .catch(err =>)<esc><left>
:ab jstrycatch try {<cr><+++><cr>}<cr>catch (<+++>) {<cr><+++><cr>}
:ab jstryfinally try {<cr><+++><cr>}<cr>finally {<cr><+++><cr>}
:ab jspush <+++>.push(<+++>)<esc>
:ab jserror throw new Error ()<esc><left>
:ab jsanon function (<+++>) {<enter><+++><enter>}<esc>
:ab jsnon function (<+++>) {<enter><+++><enter>}<esc>
:ab jsrfunc return function (<+++>) {<cr>}<esc><up>
:ab jsrobj return {<cr>}<esc>O
:ab jstimeout setTimeout (() => {<cr><+++><cr>},)<esc>
:ab jstiemout setTimeout (() => {<cr><+++><cr>},)<esc>
:ab jsinstanceof <+++> instanceof <+++><esc>
:ab jsisprototypeof <+++>.prototype.isPrototypeOf(<+++>)<esc>
:ab jsisarray Array.isArray(<+++>)
:ab jsinterval setInterval (<+++>)<esc>
:ab jsinstanceof <+++> instanceof <+++><esc>
:ab jsisprototypeof <+++>.prototype.isPrototypeOf(<+++>)<esc>
:ab jsisarray Array.isArray(<+++>)
:ab jslistener <left>.addListener('<+++>', <+++>)
:ab jslocaletime <left>toLocaleTimeString()<esc>
:ab jsedef export default
:ab jsexdef export default
:ab exdef export default
:ab jslog console.log ()<esc><left>
:ab jlsog console.log (<+++>)<esc><left>
:ab sjlog console.log (<+++>)<esc><left>
:ab sjlogq console.log (`<+++>`)<esc>0<C-j><esc>
:ab jslogq console.log (`<+++>`)<esc>0<C-j><esc>
:ab jslgoq console.log (`<+++>`)<esc>0<C-j><esc>
:ab jslogvq console.log (`${<+++>}`)<esc>0<C-j><esc>
:ab jsloge console.error()<esc><left>
:ab jsmarker console.log ('---------')<esc>
:ab jsmark console.log ('---------')<esc>
:ab jsbp console.log('breakpoint ... <+++>')
:ab jsbreakpoint console.log('breakpoint ... <+++>')
:ab jscomment /* <+++> */


" DESC: Shortcuts for writing HTML DOM Elements
" ---------------------------------------------
:ab jsgetid document.getElementById(<+++>)<esc>
:ab jsgetclass document.getElementsByClassName(<+++>)<esc>
:ab jsgetag document.getElementsByTagName(<+++>)<esc>
:ab jsqselector document.querySelector(<+++>)<esc>
:ab jsqall document.querySelectorAll(<+++>)<esc>
:ab jslistener <left>addEventListener('<+++>')<esc>


" DESC: Shortcuts for writing JS Classes/Object/Prototypes
" --------------------------------------------------------
:ab jsthis this.<+++> = <+++><esc>
:ab jsapply <+++>.apply(<+++>)<esc>
:ab jscall <+++>.call(<+++>);<esc>
:ab jsbind <+++>.bind(<+++>)<esc>
:ab jsproto <+++>.prototype.<+++> = function (<+++>) {<cr><+++><cr>};<esc>
:ab jscreate Object.create(<+++>)<esc>
:ab jshasownprop <+++>.hasOwnProperty(<+++>)
":ab jscfunc <+++>() {<enter>}<esc><Up>0<C-j><esc>
:ab jscufnc <+++>() {<enter>}<esc><Up>0<C-j><esc>
:ab jscsuper super (<+++>);<esc>
:ab jskeys Object.keys()<esc><left>
:ab jsgetprototypeof Object.getPrototypeOf(<+++>);<esc>
:ab jssetprototypeof Object.setPrototypeOf(<+++>);<esc>
:ab jsgetownpropertynames Object.getOwnPropertyNames(<+++>);<esc>
:ab jsdefineproperty Object.defineProperty(<+++>);<esc>
:ab jsdefineproperties Object.defineProperties(<+++>);<esc>


" DESC: Shortcuts for writing Functional JavaScript
" -------------------------------------------------
:ab jsforeach <+++>.forEach (<+++>)<esc>
:ab jsreduce <+++>.reduce (<+++>)<esc>
:ab jsfindindex <+++>.findIndex (<+++> => <+++>)<esc>
:ab jsfindex <+++>.findIndex (<+++> => <+++>)<esc>
:ab jsternary <+++> ? <+++> : <+++><esc>
:ab jsfetch fetch('<+++>')<+++><esc>

" DESC: Shortcuts for writing ES6 JavaScript
" ------------------------------------------
:ab jsq ``<esc><left>
:ab jsv ${}<esc><left>
:ab jsvq `${<+++>}`<esc>0<C-j><esc>
:ab jsassign Object.assign ()<esc><left>
:ab jsextend Object.extend ()<esc><left>
:ab jsfreeze Object.freeze ()<esc><left>
:ab jsarrow <+++> => <+++><esc>0<C-j><esc>
:ab jsarr <+++> => <+++><esc>0<C-j><esc>
:ab js> () => <esc>0f>a
:ab jsa> (<+++>) => <+++><esc>0<C-j>
:ab jsclass class <+++> {<cr><+++><cr>}<esc>
:ab jscalss class <+++> {<cr><+++><cr>}<esc>
:ab jscextend class <+++> extends <+++> {<cr><+++><cr>}<esc>
:ab jsnp const = new Promise ((resolve, reject) => {<cr><+++><cr>})<esc>0ft
:ab jsrnp return new Promise ((resolve, reject) => {<cr><+++><cr>})<esc>
:ab jsnpbare new Promise ((resolve, reject) => {<cr><+++><cr>})<esc>
:ab jspall Promise.all ()<esc><left>
:ab jsprace Promise.race ()<esc><left>
:ab jspresolve Promise.resolve ()<esc><left>
:ab jspreject Promise.reject ()<esc><left>
:ab jsthen .then( =><+++>)<esc>0fn
:ab jspthen .then( =><+++>)<esc>0fn
:ab jsthn .then( =><+++>)<esc>0fn
:ab jstehn .then( =><+++>)<esc>0fn
:ab jsthne .then( =><+++>)<esc>0fn
:ab jspcatch .catch ()<esc><left>
:ab jspfunc (resolve, reject) => {<cr><+++><cr>}<esc>
:ab jsstatic static <+++> (<+++>) {<cr><+++><cr>}<esc>
:ab jssuper super ()<esc><left>
:ab jsSym Symbol<+++> (<+++>)<esc>
:ab jsSymboliter <+++>[Symbol.iterator]() <+++><esc>
:ab jsSymbolspecies <+++>[Symbol.species]() <+++><esc>
:ab jsSet let <+++> = new Set([<+++>])<esc>
:ab jsMap let <+++> = new Map([<+++>])<esc>
:ab jsasync async function <+++> (<+++>) {<cr><+++><cr>}<esc>
:ab jswait await <+++>(<+++>)


" DESC: Shortcuts for writing ReactJS Library
" -------------------------------------------
:ab r/> <<+++> /><esc>0<C-j><esc>
:ab rta/> <<+++> <+++>={<+++>} /><esc>0
:ab rtq/> <<+++> <+++>="<+++>" /><esc>0
:ab rtconstruct constructor(props) {<cr>}<esc>O
:ab rtcdmount componentDidMount() {<cr>}<esc>O
:ab rtfragment <><cr></><esc>O<tab><left>
:ab <> <><cr></><esc>O<tab><left>
:ab rtsuper super(props)<esc>0
:ab rtstateinit state = {<+++>}<esc>
:ab rtsetstate this.setState()<esc><left>
:ab rtprops this.props.<+++><esc>
:ab rtbind this.<+++> = this.<+++>.bind(this)<esc>
:ab rtbind this.<+++> = this.<+++>.bind(this)<esc>
:ab rtrender ReactDOM.render (<cr><tab><App />, <cr>document.getElementById('root')<cr><left><left>)<esc>
:ab rtrende ReactDOM.render (<cr><+++>, <cr>document.getElementById('root')<cr>)<esc>
:ab rtcrender render() {<cr>}<esc>O<left>
:ab rtrnr render() {<cr>return (<cr>)<cr><left><left>}<esc>kO
:ab rtreturn return (<cr>)<esc>O<tab><left>
:ab rtretrun return (<cr>)<esc>O<tab><left>
:ab rtkey key={}<esc><left>
:ab rtvalue value={}<esc><left>
:ab rtchecked checked={}<esc><left>
:ab rtsubmit onSubmit={}<esc><left>
:ab rtclick onClick={}<esc><left>
:ab rtdisabled disabled={}<esc><left>
:ab rtdisable disabled={}<esc><left>
:ab rtchange onChange={}<esc><left>
:ab rtpdefault event.preventDefault()<esc>0
:ab pdefault event.preventDefault()<esc>0
:ab rtptypes <+++>.propTypes = {<cr><+++>: PropTypes.<+++>.isRequired,<cr>}<esc>
:ab rtproptypes static propTypes = {<cr><+++>: PropTypes.<+++><cr>}<esc>
:ab rtdefaultprops static defaultProps = {<cr><+++><cr>}<esc>
":ab rtreturndiv return (<cr><tab><div><cr><tab><+++><cr><bs></div><cr><bs>)<esc>
:ab rtreturndiv return (<cr><tab><><cr><tab><+++><cr><bs></><cr><bs>)<esc>
:ab rtrdiv return (<cr><tab><><cr><tab><+++><cr><bs></><cr><bs>)<esc>
:ab rtcomment {/* <+++>  */}<esc>0


" DESC: Shortcuts for writing React Hooks
" ---------------------------------------
":ab rtusereducer const [ <+++>, dispatch<+++> ] = useReducer(<+++>)<esc>
":ab rtcontext const <+++> = <+++>Context(<+++>)<esc>0<C-j><esc>
:ab rtusecontext const <+++> = useContext(<+++>)<esc>
:ab rtcreatecontext const  = createContext(<+++>)<esc>0ft
:ab rtconsumer <<+++>.Consumer><cr></<+++>.Consumer><esc>
:ab rtdispatch dispatch({ type:  })<esc>0f:
:ab rtdefault default:<cr><tab>return state<esc>0


" DESC: Shortcuts for writing React Router
" ----------------------------------------
:ab rtLink <Link to="<+++>"><+++></Link><esc>0<C-j><esc>
:ab rtliLink <li><Link to="<+++>"><+++></Link></li><esc>0
:ab rtulLink <ul><cr><tab><li><Link to="<+++>"><+++></Link></li><cr><bs></ul><esc>0<C-j><esc>
:ab rtNavlink <NavLink activeClassName=<+++> to="<+++>"><+++></NavLink><esc>0
:ab rtRoute <Route path="<+++>" component={<+++>} /><esc>0<C-j><esc>
:ab rtRouteroot <Route path="/" component={<+++>} exact /><esc>0<C-j><esc>
:ab rtRouter <Route path="<+++>" component={<+++>} /><esc>0<C-j><esc>
:ab rtSwitch <Switch><cr><tab><Route path="<+++>" component={<+++>} exact /><cr><bs></Switch><esc><C-j><esc>

" DESC: Shortcuts for writing TypeScript
" ----------------------------------------
:ab tsconstruct constructor(props: Props) {<cr>}<esc>O


" DESC: Shortcuts for writing Redux
" ---------------------------------
:ab rxdevtools window.__REDUX_DEVTOOLS_EXTENSION__ && window.__REDUX_DEVTOOLS_EXTENSION__(),<esc>
:ab rxprovider <Provider store={store}><cr></Provider><Up><esc>
:ab rxproviderapp <Provider store={store}><cr><+++><App /><cr></Provider><Up><esc>
:ab rxreducer const <+++> = (state = <+++>, action) => {<cr><+++>switch (action.type) <+++><cr>}<esc>
:ab rxreduce const <+++> = (state = <+++>, action) => {<cr><+++><cr>}<esc>
:ab rxfunc const <+++> = (state = <+++>, action) => {<cr><+++><cr>}<esc>
:ab rxactions const <+++> = <+++> => ({<cr><+++>type: <+++><cr>})<esc>
:ab rxaction const <+++> = <+++> => ({<cr><+++>type: <+++><cr>})<esc>
:ab rxdispatch dispatch(<+++>)<esc>
:ab rxswitch switch (action.type) {<cr><+++><cr>}<esc>
:ab rxswithc switch (action.type) {<cr><+++><cr>}<esc>
:ab rxdefault default:<cr>  return state<esc>
:ab rxconnect connect(<+++>)(<+++>)<esc>
:ab rxstore const store = createStore (<+++>)<esc>
:ab rxcombine combineReducers({<cr><+++><cr>})<esc>
:ab rxmapstate const mapStateToProps = state => (<+++>)<Up><esc>
:ab rxmapdispatch const mapDispatchToProps = <+++><esc>
:ab rxdispatch store.dispatch (<+++>)
:ab rxstate console.log ('<+++>', store.getState())


" DESC: Shortcuts for writing Node.js/Express
" -------------------------------------------
:ab ndbodyparser const bodyParser = require('body-parser')<esc>0
:ab ndfunc (req, res) => {<cr><+++><cr>}<esc>
:ab ndcreateserver <+++>.createServer((req, res) => {<cr><+++><cr>})<esc>
:ab ndcontent {'Content-Type': 'text/plain'}<esc>
:ab ndwritehead <+++>.writeHead(200, {"Content-Type": "<+++>"})
:ab ndredirect <+++>.redirect(<+++>, '<+++>');
:ab ndreadfile <+++>.readFile(<+++>, <+++>);<esc>
:ab ndlisten <+++>.listen(<+++>)<esc>
:ab ndon <+++>.on('<+++>', <+++> => <+++>)<esc>0<C-j><esc>
:ab ndenv process.env.<esc>
:ab ndprocess process.env.<esc>
:ab ndjoin path.join(__dirname, )<esc><left>

:ab exprouter const router = express.Router()<esc>
:ab expuse app.use()<esc><left>
:ab expget app.get('/', (req, res) => {<cr><+++><cr>})<esc>2kf/
:ab exppost app.post('/', (req, res) => {<cr><+++><cr>})<esc>2kf/
:ab expput app.put('/', (req, res) => {<cr><+++><cr>})<esc>2kf/
:ab expdelete app.delete('/', (req, res) => {<cr><+++><cr>})<esc>2kf/
:ab expfunc (req, res, next) => {<cr>}<esc>O
:ab expnext next()<esc><left>
:ab expset <+++>.set('<+++>', <+++>)<esc>0
:ab expbget <+++>.get('<+++>', (req, res) => {<cr><+++><cr>})<esc>0
:ab expbpost <+++>.post('<+++>', (req, res) => {<cr><+++><cr>})<esc>0
:ab experrfunc (err, req, res, next) => {<cr>}<esc>O
:ab expstatus res.status().send(<+++>)<esc>0wwe
:ab expredirect res.redirect()<esc><left>
:ab expsend res.send()<esc><left>
:ab expjson res.json()<esc><left>
:ab exprender app.render()<esc><left>
:ab explisten app.listen()<esc><left>


" DESC: Shortcuts for writing JSON Tags
" -------------------------------------
:ab jsn "<+++>": "<+++>",<esc>0<C-j><esc>
:ab jsonstring JSON.stringify()<esc><left>
:ab jsonparse JSON.parse()<esc><left>


" DESC: Shortcuts for writing Mocha/Karma Test
" --------------------------------------------
:ab jssuite suite (<+++>, <+++>)<esc>
:ab jsact act(() => )<esc>0f>
:ab jsexpect expect()<esc><left>
:ab jsassert assert()<esc><left>
:ab jsit it ('<+++>', () => {<cr><+++><cr><bs>})<esc>0
:ab jsitdone it ('<+++>', done => {<cr><+++><cr><bs>})<esc>0
:ab jsetobe expect(<+++>).toBe(<+++>)<esc>0<C-j><esc>
:ab jseequal expect(<+++>).toEqual(<+++>)<esc>0<C-j><esc>
:ab jsetruthy expect(<+++>).toBeTruthy()<esc>0<C-j><esc>
:ab jsefalsy expect(<+++>).toBeFalsy()<esc>0
:ab jseundefined expect(<+++>).toBeUndefined()<esc>0
:ab bsinject inject(<+++>)<esc>0
:ab jsbeforeEach beforeEach(() => {<cr>container = document.createElement('div')<cr>document.body.appendChild(container)<cr><bs>})<esc>
:ab jsafterEach afterEach(() => {<cr>unmountComponentAtNode(container)<cr>container.remove()<cr>container = null<cr><bs>})<esc>
:ab jsjestspyon jest.spyOn(<+++>, "<+++>").mockImplementation(() => <cr><tab><+++><cr><bs>)<esc>0

" DESC: Shortcuts for writing Firebase utilities
" ----------------------------------------------
:ab fbsignin <+++>.signInWithEmailAndPassword(<+++>)<esc>0<C-j><esc>
:ab fbcreateuser <+++>.createUserWithEmailAndPassword(<+++>)<esc>0<C-j><esc>

" DESC: Shortcuts for writing jQuery tags
" ---------------------------------------
:ab jq> $(<+++>)<esc>
:ab jq' $('<+++>')<+++><esc>
:ab jqc $('.<+++>')<+++><esc>
:ab jqi $('#<+++>')<+++><esc>
:ab jqdoc $(document)<+++><esc>
:ab jqfunc $(() => <+++>)<esc>
:ab jqthis $(this)<+++><esc>
:ab jqfe function(event) {<cr><+++><cr>}<esc>
:ab jqready $(document).ready(<+++>)<esc>
:ab jqarg $(<+++>).<+++>(<+++>)
:ab jqac .addClass(<+++>)
:ab jqrc .removeClass(<+++>)
:ab jqtc .toggleClass(<+++>)
:ab jqclick .click(<+++>)
:ab jqhover .hover(<+++>)
:ab jqon .on('<+++>', <+++>)
:ab jqtrigger .trigger('<+++>')
:ab jqget  $.get(<+++>)
:ab jqjson $.getJSON(<+++>)
:ab jqeach .each(<+++>)
:ab jqpd e.preventDefault()
:ab jqsp e.stopPropagation()
:ab jqscript $.getScript(<+++>)


" DESC: Miscellaneous Shortcuts
" -----------------------------
" For Flow (Data Type Checks)
:ab rtflow /* @flow */<esc>
:ab jsflow /* @flow */<cr>/* eslint-disable no-unused-vars */<esc>
" For ESLint (JS Linter)
:ab jslint /* eslint-disable no-unused-vars */
:ab jsclear console.clear('\1Bc')<esc>
:ab jsline //=================================
:ab jsoutput // ========================== [output] ========================== <esc>0
:ab firestatus response.status(<+++>).json(<+++>)<esc>0<C-j><esc>
:ab rtcontext const <+++> = <+++>Context(<+++>)<esc>0<C-j><esc>
:ab jsalert alert()<esc><left>
:ab tofix <left>.toFixed(2)<esc>0<w>
