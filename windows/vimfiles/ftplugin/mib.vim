" MibBrowser.vim:	Utilities to browser plain text file.
" Release:		1.3.4
" Maintainer:		ypguo<guoyoooping@163.com>
" Last modified:	2010.08.07
" License:		GPL

" Line continuation used here
let s:cpo_save = &cpo
set cpo&vim

" ****************** Options *******************************************
"When this file reload, only load MibBrowser_Ctags_Cmd once.
if !exists('Tlist_Ctags_Cmd')
	echomsg 'TxMibBrowser: Taglist(http://www.vim.org/scripts/script.php?script_id=273) ' .
				\ 'not found. Plugin is not loaded.'
	" Skip loading the plugin
	let loaded_taglist = 'no'
	let &cpo = s:cpo_save
	finish
endif
" 重新定义命令
if !exists('MibBrowser_Ctags_Cmd')
	let MibBrowser_Ctags_Cmd = Tlist_Ctags_Cmd
	echo  MibBrowser_Ctags_Cmd  
endif

"Mib tag definition start.
let s:MibBrowser_Config = ' --langdef=mib --langmap=mib:.mib'

"Title tag definition
let s:MibBrowser_Config .= '--regex-mib="/^./\1/c,content/" '

"Table and Figure tag definition
let s:MibBrowser_Config .= '--regex-mib="/^[ \t]+(table[ \t]+[0-9a-zA-Z]+([.: ]([ \t]*.+)?)?$)/\1/t,tables/i" '
let s:MibBrowser_Config .= '--regex-mib="/^[ \t]+(figure[ \t]+[0-9a-zA-Z]+([.: ]([ \t]*.+)?)?$)/\1/f,figures/i" '
if ('utf8' != &fenc)
	let s:MibBrowser_Config = iconv(s:MibBrowser_Config, 'utf8', &fenc)
endif

"Pass parameters to taglist
let tlist_mib_settings = 'mib;c:content;f:figures;t:tables'
" 修改cmd
let Tlist_Ctags_Cmd = MibBrowser_Ctags_Cmd . s:MibBrowser_Config

" restore 'cpo'
let &cpo = s:cpo_save
unlet s:cpo_save

