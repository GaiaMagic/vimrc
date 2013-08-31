" ===== Vundle =====
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" bundles here
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Yggdroot/indentLine'

filetype plugin indent on
" ===== Vundle end =====

syntax on " 语法高亮
filetype plugin on
autocmd BufEnter * :syntax sync fromstart
au FocusLost * :up " auto save files when focus is lost

let mapleader=","

set nocompatible    " 关闭兼容模式
set autoindent      " 打开自动缩,继承前一行的缩进方式，特别适用于多行注释
set nu              " 显示行号
set showcmd         " 显示命令
set noswapfile      " 不使用swp文件
set nobackup        " 关闭备份
set incsearch       " 增量式搜索
set hlsearch        " 高亮搜索
set ignorecase      " 搜索时忽略大小写
set magic           " 额，自己:h magic吧，一行很难解释
set showmatch       " 显示匹配的括号
set nowb
set lbr             " 在breakat字符处而不是最后一个字符处断行
set ai              " 自动缩进
set si              " 智能缩进
set autoread        " 当文件在外部被修改时，自动重新读取
set ruler           " show where you are

set history=100           " vim记住的历史操作的数量，默认的是20
set mouse=a               " 使用鼠标
set guioptions-=R         " 隐藏右边滚动条
set formatoptions+=mM     " 正确地处理中文字符的折行和拼接
set whichwrap+=<,>,h,l    " 退格键和方向键可以换行
set fileencodings=utf-8   " 文件UTF-8编码
set clipboard=unnamedplus " yank and paste with the system clipboard
set pastetoggle=<F10>     " 切换粘贴模式

" 设置缩进
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

" 映射 Mac 风格的光标控制
inoremap <C-e> <END>
inoremap <C-a> <HOME>
inoremap <C-f> <Right>
inoremap <C-b> <Left>

" 在文件名上按gf时，在新的tab中打开
map gf :tabnew <cfile><cr>
" Tab和Shift-Tab缩进
nmap <tab> v>
nmap <s-tab> v<
vmap <tab> >gv
vmap <s-tab> <gv

" strip all trailing whitespace in the current file
nnoremap <leader><space> :%s/\s\+$//<cr>:let @/=''<CR>
" reselect the text that was just pasted
nnoremap <leader>V V`]
" 水平分割窗口
nnoremap <leader>s <C-w>s
" 垂直分割窗口
nnoremap <leader>v <C-w>v

" NERDTree显示对应文件位置
map <F7> :NERDTreeFind<CR>
" NERDTree开关
map <F8> :NERDTreeToggle<CR>

" 窗口区域切换,Ctrl+jkhl 来切换
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" copy the file relative/absoulte path to the clipboard
nmap <F5> :let @*=expand("%")<CR>
nmap ,cp :let @*=expand("%:p")<CR>

"colorscheme blackboard  " 使用blackboard插件的配色
"colorscheme monokai
