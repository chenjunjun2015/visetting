set nocompatible               " be iMproved  
filetype off                   " required!       /**  从这行开始，vimrc配置 **/  

colorscheme molokai

set rtp+=~/.vim/bundle/vundle/  
call vundle#rc()  

" let Vundle manage Vundle  
" required!   
Bundle 'gmarik/vundle'  

" My Bundles here:  /* 插件配置格式 */  
"     
" original repos on github （Github网站上非vim-scripts仓库的插件，按下面格式填写）  
Bundle 'tpope/vim-fugitive'  
Bundle 'Lokaltog/vim-easymotion'  
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}  
Bundle 'tpope/vim-rails.git'  
" vim-scripts repos  （vim-scripts仓库里的，按下面格式填写）  
Bundle 'L9'  
Bundle 'FuzzyFinder'  
" non github repos   (非上面两种情况的，按下面格式填写)  
Bundle 'wincent/command-t'  
"左边目录树，实现新增，删除文件等操作
Bundle 'scrooloose/nerdtree'
"实现左边目录树与git的同步
Bundle 'Xuyuanp/nerdtree-git-plugin'

"代码块，比如if else switch case等补全
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'Valloric/YouCompleteMe'
" ...   

Plugin 'scrooloose/nerdcommenter'

filetype plugin indent on     " required!   /** vimrc文件配置结束 **/  
"                                           /** vundle命令 **/  
" Brief help  
" :BundleList          - list configured bundles  
" :BundleInstall(!)    - install(update) bundles  
" :BundleSearch(!) foo - search(or refresh cache first) for foo   
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles  
"     
" see :h vundle for more details or wiki for FAQ   
" NOTE: comments after Bundle command are not allowed..  
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }
let g:NERDTreeUseSimpleIndicator = 1

let g:UltiSnipsExpandTrigger="<tab>"
let g:UtliSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetsDir="~/.vim/Bundle/ultisnips"
let g:UltiSnipsSnippetDirectories=["syntax"]
let g:UltiSnipsUsePythonVersion=2 
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

set incsearch
set ignorecase
set nu
set nocompatible
set wildmenu
set laststatus=2
set ruler
set cursorline
set cursorcolumn
set hlsearch
syntax enable
syntax on
filetype indent on
set expandtab
set tabstop=4
set shiftwidth=4
set foldmethod=syntax
set nofoldenable

let mapleader=";"

" Add spaces after comment delimiters by default
 let g:NERDSpaceDelims = 1
"
" " Use compact syntax for prettified multi-line comments
 let g:NERDCompactSexyComs = 1
"
" " Align line-wise comment delimiters flush left instead of following code
" indentation
 let g:NERDDefaultAlign = 'left'
"
" " Set a language to use its alternate delimiters by default
 let g:NERDAltDelims_java = 1
"
" " Add your own custom formats or override the defaults
 let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
"
" " Allow commenting and inverting empty lines (useful when commenting a
" region)
 let g:NERDCommentEmptyLines = 1
"
" " Enable trimming of trailing whitespace when uncommenting
 let g:NERDTrimTrailingWhitespace = 1
