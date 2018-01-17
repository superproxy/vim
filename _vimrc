"设置内部编码，设置为utf-
"language zh_CN.GB2312
set encoding=utf-8
" 设置文件编码检测类型及支持格式
set fencs=utf-8,gbk,ucs-bom,gb18030,gb2312,cp936,big5,latin-1
" 指定菜单语言
set langmenu=zh_CN.utf-8
language messages zh_CN.utf-8
let &termencoding = &encoding

set nocompatible  " Use Vim defaults (much better!)
filetype off
"set rtp+=/usr/share/vim/vimfiles/bundle/Vundle.vim
set rtp+=$VIM/vimfiles/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'joonty/vdebug'
Plugin 'spf13/vim-colors'  
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-powerline'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/Ferret'
Plugin 'vim-scripts/vgdb'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
" scripts from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'FuzzyFinder'
"Plugin 'file:///home/gmarik/path/to/plugin'
call vundle#end()            " required


source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction



filetype plugin indent on    " required


"设置帮助语言
set helplang=cn,en

"把gui的工具栏去掉(要去掉，把等号前面的加号变成一个减号即可)
"set guioptions+=T

"把gui的右边的滑动条去掉
set guioptions+=r

"把gui的左边的滑动条去掉
set guioptions-=L

"把gui的菜单去掉
set guioptions+=m

"显示行号
set number

"打开语法高亮显示功能
syntax enable
"syntax on



"不备份
set nobackup 
"set nowritebackup
" end 不备份

" 不要生成swap文件，当buffer被丢弃的时候隐藏它 
"setlocal noswapfile 
"set bufhidden=hide 


" 设置tab 空格4
set tabstop=4

if has("win32")
"set guifont=Consolas:h12
"set guifontwide=Microsoft\ YaHei:h12   
"  set guifont=Fixedsys:h12:cANSI
     "set guifont=YaHei\ Consolas\ Hybrid:h20
  "set gfw=Yahei_Mono:h12:cGB2312
     "set guifont=YaHei
   set guifont=Consolas:h12

"  set  guifont=Cou
endif


" set autochdir       "自动切换工作目录
" 状态行颜色
"highlight StatusLine guifg=SlateBlue guibg=Yellow
"highlight StatusLineNC guifg=Gray guibg=White



" 在状态行上显示光标所在位置的行号和列号
"set ruler
"set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)

"命令行（在状态行下）的高度，默认为1，这里是2
"set cmdheight=1

" 启动的时候不显示那个援助索马里儿童的提示
set shortmess=atI

" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0

" 不让vim发出讨厌的滴滴声
set noerrorbells


" 在搜索的时候忽略大小写
set ignorecase

" 不要高亮被搜索的句子（phrases）
"set nohlsearch

"在搜索时，输入的词句的逐字符高亮（类似firefox的搜索）
"set incsearch


"不要闪烁
set novisualbell
"set novisualbell

"set bell-style none
":set vb t_vb=


" 我的状态行显示的内容（包括文件类型和解码）
set statusline=%F%m%r%h%w\[POS=%l,%v][%p%%]\%{strftime(\"%d/%m/%y\ -\ %H:%M\")}

" 总是显示状态行
set laststatus=2
"启动gVIM时最大化
au GUIEnter * simalt ~x


"高亮当前行
set cursorline

map <F2> :tabn<CR>
"set ignorecase
"set nu

map <F5> :silent !"D:/Program Files/KuGou/KuGou2010/KuGoo.exe"<CR>


let g:calendar_diary="E:/yxz/diary"
"不使用calendar和wiki关联
let g:vimwiki_use_calendar=0
let g:vimwiki_list = [{'path': 'e:\yxz\knowlegebase', 'path_html': 'e:\yxz\knowlegebase'}]
" fencview
let g:fencview_autodetect = 0


 " 按照名称排序
let Tlist_Sort_Type = "name"

" 在右侧显示窗口
"let Tlist_Use_Right_Window = 1

" 压缩方式
let Tlist_Compart_Format = 1

" 如果只有一个buffer，kill窗口也kill掉buffer
let Tlist_Exist_OnlyWindow = 1

" 不要关闭其他文件的tags
let Tlist_File_Fold_Auto_Close = 0
"map <F4> <Esc>:TlistToggle<CR>
"let Tlist_Txt_Settings = 'txt;c:content;f:figures;t:tables'
"au BufRead,BufNewFile *.txt setlocal ft=txt
filetype plugin on 
au BufEnter *.txt setlocal ft=txt

"let tlist_def_mib_settings = 'mib;c:content'
"au BufEnter *.mib setlocal ft=mib

let g:winManagerWindowLayout='FileExplorer|TagList'
"nmap wm  <Esc>:WMToggle<CR>
nmap <F4> <Esc>:WMToggle<CR>

"终止关闭回显
nmap<F7>   <ESC>:silent !cmd /q /c start mailto:<CR>
"nmap<F8>   <ESC>:!start emulator<CR>
"map<F8>   exec ":silent !cmd /q /c start mailto:?%"
set cscopequickfix=s-,c-,d-,i-,t-,e-

filetype plugin indent on
" 智能补全
set completeopt=longest,menu
            
" checkstyle
let  Checkstyle_XML='D:\Program Files\Java\checkstyle-5.3\sun_checks.xml'
let Checkstyle_Classpath = 'D:\Program Files\Java\checkstyle-5.3\checkstyle-5.3-all.jar'

set  go=m
iab html <html></html>


let g:vim_markdown_frontmatter=1
set tags=tags
set autochdir
set nu

map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
map <F6> :make<CR><CR><CR> :copen<CR><CR>