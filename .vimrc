"关闭vi的一致性模式 避免以前版本的一些Bug和局限
set nocompatible
"鼠标控制vim的光标移动
set mouse=a

"设定tab长度为4
set tabstop=4
set ts=4
" 设置按BackSpace的时候可以一次删除4个空格
set softtabstop=4
" 设定 << 和 >> 命令移动宽度为 4
set shiftwidth=4
set expandtab
%retab!
" 高亮 Tab 符
set list
set listchars=tab:>-,trail:-

"设置背景色
set bg=dark

"设置highlight颜色
"配置vim的配色方案
"colorscheme molokai
colorscheme desert

"配置backspace键工作方式
set backspace=indent,eol,start

"显示行号
set number
"设置在编辑过程中右下角显示光标的行列信息
set ruler
"当一行文字很长时取消换行
"set nowrap

"在状态栏显示正在输入的命令
set showcmd

"设置历史记录条数
set history=1000

"单词不断行
set linebreak

"设置取消备份，禁止临时文件生成
set nobackup
set noswapfile

"突出现时当前行列
set cursorline
"set cursorcolumn

"设置匹配模式，类似当输入一个左括号时会匹配相应的右括号
set showmatch

"开启新行时自动缩进
set smartindent

"设置C/C++方式自动对齐
set autoindent
set cindent

"开启语法高亮功能
syntax enable
syntax on
set cindent

"开启代码折叠
set foldmethod=syntax
set foldlevel=99
map <F3> za

"突出显示当前行
set cursorline

"设置搜索内容时就显示搜索结果
set incsearch

"设置插入括号时短暂的跳转到匹配的对应括号
set showmatch
"短暂跳转到匹配括号的时间
set matchtime=2


"选中状态下Ctrl+c系统复制，与系统剪贴板共用
vmap <C-c> "+y

"vsplit和split分割窗口
map <F9> :vsplit <cr>
map <F10> :split <cr>

filetype off


"JAVASCRIPT的折叠设置
let b:javascript_fold=1
let javascript_enable_domhtmlcss=1


"自定义关联文件类型
au BufNewFile,BufRead *.less set filetype=css
au BufNewFile,BufRead *.phtml set filetype=php
au BufRead,BufNewFile *.js set filetype=javascript
au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn} set filetype=mkd

"插件大本营
"设置jsbeautify
map <C-f> :call JSBeautify()<cr>

"设置nerdtree
map <F2> :NERDTreeMirror<cr>
map <F2> :NERDTreeToggle<cr>

"设置vim-multiple-cursors
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-m>'
let g:multi_cursor_skip_key='<C-l>'
let g:multi_cursor_quit_key='<Esc>'

"设置emmet
let g:user_emmet_expandabbr_key = '<C-x>'
let g:user_emmet_settings = {
    \ 'php' : {
    \ 'extends' : 'html',
    \ 'filters' : 'c',
    \ },
    \ 'xml' : {
    \ 'extends' : 'html',
    \ },
    \ 'haml' : {
    \    'extends' : 'html',
    \ },
\ }



set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

"==================================HTML=========================================
Bundle 'mattn/emmet-vim'
Bundle 'othree/html5.vim'
Bundle 'othree/html5-syntax.vim'
Bundle 'gmarik/vim-markdown'
Bundle 'suan/vim-instant-markdown'

"==================================JAVASCRIPT===================================
Bundle 'scrooloose/syntastic'
Bundle 'jQuery'
Bundle 'vim-scripts/nginx.vim'
Bundle 'vim-scripts/jsbeautify'
Bundle 'leshill/vim-json'

"==================================CSS==========================================
Bundle 'wavded/vim-stylus'
Bundle 'groenewege/vim-less'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'bolasblack/csslint.vim'
Bundle 'JulesWang/css.vim'
Bundle 'lilydjwg/colorizer'
Bundle 'vim-scripts/AutoComplPop'

"=================================AutoComplete==================================
Bundle 'Shougo/neocomplcache.vim'
Bundle 'SirVer/ultisnips'
Bundle 'vim-scripts/AutoClose'

"=================================Color=========================================
Bundle 'tomasr/molokai'
Bundle 'altercation/vim-colors-solarized'

"=================================Tool==========================================
Bundle 'terryma/vim-multiple-cursors'
Bundle 'shemerey/vim-project'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-surround'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'kien/ctrlp.vim'
Bundle 'Markdown'
Bundle 'Markdown-syntax'
Bundle 'php.vim-html-enhanced'
Bundle 'pangloss/vim-javascript'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/freya'


"=================================Git===========================================
Bundle 'gmarik/github-search.vim'
Bundle 'tpope/vim-fugitive'


filetype plugin indent on
