"设置启动文件夹
cd E:\Vim\Work

"插入模式下移动光标
imap<C-h> <esc>ha
imap<C-j> <esc>ja
imap<C-k> <esc>ka
imap<C-l> <esc>la

"设置主题类型
colorscheme desert

"语法开关
:syntax enable
:syntax on

"设置自动备份
"set backup

"命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=1

"右下角的状态栏
set ruler

"通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0

"不让vim发出讨厌的滴滴声
set noerrorbells

"增强模式中的命令行自动完成操作
set wildmenu

"启动的时候不显示那个援助索马里儿童的提示
set shortmess=atI

"在处理未保存或只读文件的时候，弹出确认 
set confirm 

"与windows共享剪贴板 
set clipboard+=unnamed

"侦测文件类型 
filetype on 

"载入文件类型插件 
filetype plugin on 

"为特定文件类型载入相关缩进文件 
filetype indent on 

filetype plugin indent on

"设置代码注释快捷方式
map <c-h> ,c<space>

"设置Python编译快捷方式
map <F5> :!python.exe % <Cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索和匹配
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"高亮显示匹配的括号
set showmatch

"匹配括号高亮的时间（单位是十分之一秒）
set matchtime=5

"在搜索的时候忽略大小写
set ignorecase

"高亮查找
set hlsearch


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文本格式和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"自动格式化
"set formatoptions=tcrqn

"设置自动缩排
set autoindent

"制表符为4
set tabstop=4

"不要换行
set nowrap

"不要用空格代替制表符
set noexpandtab

"打开行号
set number

"退格键开关（012）
set backspace=2

"允许Fortran代码折叠
let fortran_fold=1

"设置代码折叠的方式，这样每个program、module、subroutine、function都可以折叠了
set foldmethod=syntax

"如果想在文件打开后所有折叠都自动展开，请加入以下配置
set foldlevelstart=99

"设置代码折叠符号（行号左侧），可要可不要，看自己喜欢了
set foldcolumn=2

"配置WinManager
let g:winManagerWindowLayout='FileExplorer|BufExplorer'
let g:winManagerWidth=35       "这里设置左侧栏目的宽度
nmap <F3> :WMToggle<cr>      "映射F3键为开关Winmanager


"设定默认字体
set guifont=Consolas:h10:cANSI

"设定默认解码方式
set fileencodings=utf-8,gbk

"设置自动补全
let g:NeoComplCache_EnableAtStartup = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"设置Fortran语法相关
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let fortran_free_source=1
let fortran_more_precise=1
let fortran_do_enddo=1

"去掉固定格式每行开头的红色填充
let fortran_have_tabs=1



"获取当前路径，将$HOME转化为~
function! CurDir()
    let curdir = substitute(getcwd(), $HOME, "~", "g")
    return curdir
endfunction
set statusline=[%n]\ %f%m%r%h\ \|\ \ pwd:\ %{CurDir()}\ \ \|%=\|\ %l,%c\ %p%%\ \|\ ascii=%b,hex=%b%{((&fenc==\"\")?\"\":\"\ \|\ \".&fenc)}\ \|\ %{$USER}\ @\ %{hostname()}\
