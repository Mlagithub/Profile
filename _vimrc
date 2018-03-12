"���������ļ���
cd E:\Vim\Work

"����ģʽ���ƶ����
imap<C-h> <esc>ha
imap<C-j> <esc>ja
imap<C-k> <esc>ka
imap<C-l> <esc>la

"������������
colorscheme desert

"�﷨����
:syntax enable
:syntax on

"�����Զ�����
"set backup

"�����У���״̬���£��ĸ߶ȣ�Ĭ��Ϊ1��������2
set cmdheight=1

"���½ǵ�״̬��
set ruler

"ͨ��ʹ��: commands������������ļ�����һ�б��ı��
set report=0

"����vim��������ĵε���
set noerrorbells

"��ǿģʽ�е��������Զ���ɲ���
set wildmenu

"������ʱ����ʾ�Ǹ�Ԯ���������ͯ����ʾ
set shortmess=atI

"�ڴ���δ�����ֻ���ļ���ʱ�򣬵���ȷ�� 
set confirm 

"��windows��������� 
set clipboard+=unnamed

"����ļ����� 
filetype on 

"�����ļ����Ͳ�� 
filetype plugin on 

"Ϊ�ض��ļ�����������������ļ� 
filetype indent on 

filetype plugin indent on

"���ô���ע�Ϳ�ݷ�ʽ
map <c-h> ,c<space>

"����Python�����ݷ�ʽ
map <F5> :!python.exe % <Cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ������ƥ��
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"������ʾƥ�������
set showmatch

"ƥ�����Ÿ�����ʱ�䣨��λ��ʮ��֮һ�룩
set matchtime=5

"��������ʱ����Դ�Сд
set ignorecase

"��������
set hlsearch


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" �ı���ʽ���Ű�
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"�Զ���ʽ��
"set formatoptions=tcrqn

"�����Զ�����
set autoindent

"�Ʊ��Ϊ4
set tabstop=4

"��Ҫ����
set nowrap

"��Ҫ�ÿո�����Ʊ��
set noexpandtab

"���к�
set number

"�˸�����أ�012��
set backspace=2

"����Fortran�����۵�
let fortran_fold=1

"���ô����۵��ķ�ʽ������ÿ��program��module��subroutine��function�������۵���
set foldmethod=syntax

"��������ļ��򿪺������۵����Զ�չ�����������������
set foldlevelstart=99

"���ô����۵����ţ��к���ࣩ����Ҫ�ɲ�Ҫ�����Լ�ϲ����
set foldcolumn=2

"����WinManager
let g:winManagerWindowLayout='FileExplorer|BufExplorer'
let g:winManagerWidth=35       "�������������Ŀ�Ŀ��
nmap <F3> :WMToggle<cr>      "ӳ��F3��Ϊ����Winmanager


"�趨Ĭ������
set guifont=Consolas:h10:cANSI

"�趨Ĭ�Ͻ��뷽ʽ
set fileencodings=utf-8,gbk

"�����Զ���ȫ
let g:NeoComplCache_EnableAtStartup = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"����Fortran�﷨���
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let fortran_free_source=1
let fortran_more_precise=1
let fortran_do_enddo=1

"ȥ���̶���ʽÿ�п�ͷ�ĺ�ɫ���
let fortran_have_tabs=1



"��ȡ��ǰ·������$HOMEת��Ϊ~
function! CurDir()
    let curdir = substitute(getcwd(), $HOME, "~", "g")
    return curdir
endfunction
set statusline=[%n]\ %f%m%r%h\ \|\ \ pwd:\ %{CurDir()}\ \ \|%=\|\ %l,%c\ %p%%\ \|\ ascii=%b,hex=%b%{((&fenc==\"\")?\"\":\"\ \|\ \".&fenc)}\ \|\ %{$USER}\ @\ %{hostname()}\
