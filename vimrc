set nocompatible               " be iMproved
filetype off                   " required!
set ts=4
set hlsearch
set shiftwidth=4 
set incsearch
highlight Search term=standout ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow

set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()
 
" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
 
" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'git://github.com/Lokaltog/vim-powerline.git'
"Bundle 'taglist.vim'
Bundle 'The-NERD-tree'
Bundle 'git://github.com/vim-scripts/taglist.vim.git'
Bundle 'winmanager'
Bundle 'minibufexpl.vim'
Bundle 'OmniCppComplete'
Bundle 'Tagbar'
Bundle 'git://github.com/majutsushi/tagbar.git'
Bundle 'vim-addon-commenting'
Bundle 'a.vim'
Bundle 'c-standard-functions-highlight'
" ...
 
filetype plugin indent on     " required!
"
" Brief help  -- 此处后面都是vundle的使用命令
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

set nu
if has("syntax")
  syntax on
endif

"powerline configure
set laststatus=2
set t_Co=256
let g:Powerline_symbols='unicode'
set encoding=utf8
"powerline configure

"taglist configure
"let Tlist_Show_One_File=1    "只显示当前文件的tags
let Tlist_WinWidth=20        "设置taglist宽度
let Tlist_Exit_OnlyWindow=1  "tagList窗口是最后一个窗口，则退出Vim
let Tlist_Use_Right_Window=1 "在Vim窗口右侧显示taglist窗口
let Tlist_Auto_Open=0				 "auto open 
let Tlist_Use_SingleClick=1  
"taglist configure

"OmniCppComplete configure
set nocp
filetype plugin on
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+ias --extra=+q .<CR>
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_NamespaceSearch = 2
let OmniCpp_ShowScopeInAbbr = 0
let OmniCpp_DisplayMode = 0
let OmniCpp_ShowPrototypeInAbbr = 0
let OmniCpp_ShowAccess = 1
let OmniCpp_MayCompleteDot = 1
let OmniCpp_MayCompleteArrow = 1
let OmniCpp_MayCompleteScope = 0
let OmniCpp_SelectFirstItem = 0

"tagbar configure
autocmd BufEnter * nested :call tagbar#autoopen(0)
let g:tagbar_sort = 0
let g:tagbar_width=20

"NERDTree configure
let NERDTreeWinSize = 20
let NERDTreeIgnore=['\.o$', '\~$', 'tags', 'Makefile']
autocmd vimenter * NERDTree

"set enconding
set fileencodings=utf-8,gb2312,gbk
