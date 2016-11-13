syntax on
set nu
set hlsearch
set autoindent

map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR> 
set nocompatible              " be iMproved  
filetype off                  " required!  
set nocp  
filetype plugin on  
  
set rtp+=~/.vim/bundle/vundle/  
call vundle#rc()  
  
" let Vundle manage Vundle  
" required!   
Bundle 'gmarik/vundle'  
  
" 可以通过以下四种方式指定插件的来源  
" a) 指定Github中vim-scripts仓库中的插件，直接指定插件名称即可，插件明中的空格使用“-”代替。  
Bundle 'L9'  
  
" b) 指定Github中其他用户仓库的插件，使用“用户名/插件名称”的方式指定  
Bundle 'tpope/vim-fugitive'  
Bundle 'Lokaltog/vim-easymotion'  
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}  
Bundle 'tpope/vim-rails.git'  
  
" c) 指定非Github的Git仓库的插件，需要使用git地址  
Bundle 'git://git.wincent.com/command-t.git'  
  
" d) 指定本地Git仓库中的插件  
"Bundle 'file:///Users/gmarik/path/to/plugin'  
  
filetype plugin indent on     " required!  
Bundle 'STL-improved'
Plugin 'scrooloose/syntastic'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'molokai'
Bundle 'evening_2'
Bundle 'kien/ctrlp.vim'
Bundle 'AutoClose'
Bundle 'matchit.zip'
Bundle 'less.vim'
Bundle 'The-NERD-tree'
Bundle 'The-NERD-Commenter'
Bundle 'godlygeek/tabular'
Bundle 'qiyu2580/vimcdoc'
Bundle 'vim-scripts/Emmet.vim'
Bundle 'auto_mkdir'
Bundle 'UltiSnips'
Bundle 'hallettj/jslint.vim'
Bundle 'EasyMotion'
Bundle 'Yggdroot/indentLine'
Bundle 'plasticboy/vim-markdown'
Bundle 'vcscommand.vim'
Bundle 'mhinz/vim-startify'
Bundle 'terryma/vim-expand-region'
Bundle 'tpope/vim-surround'
Bundle 'rking/ag.vim'
Bundle 'taiansu/nerdtree-ag'
Bundle 'heavenshell/vim-jsdoc'
Bundle 'Shougo/vimproc.vim'
Bundle 'Shougo/vimshell.vim'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'othree/xml.vim'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'maksimr/vim-jsbeautify'
Bundle 'einars/js-beautify'
Bundle 'vim-scripts/winmanager'
Bundle 'bling/vim-airline' 
Bundle 'taglist.vim'
Bundle 'fholgado/minibufexpl.vim' 
Bundle 'SuperTab'
Bundle 'vimwiki'
Bundle 'bufexplorer.zip'
Bundle 'matrix.vim--Yang'
Bundle 'FencView.vim'
Bundle 'Conque-Shell'
Bundle 'Vimpress'
Bundle 'Markdown'
Bundle 'LaTeX-Suite-aka-Vim-LaTeX'
Bundle 'c.vim'
Bundle 'snipMate'
Bundle 'EasyGrep'
Bundle 'OmniCppComplete'

" Under linux need exec 'dos2unix  ~/.vim/bundle/QFixToggle/plugin/qfixtoggle.vim'
Bundle 'QFixToggle'

Bundle 'Color-Sampler-Pack'
Bundle 'altercation/vim-colors-solarized'
Bundle 'txt.vim'
Bundle 'mru.vim'
"Bundle 'YankRing.vim'
Bundle 'maxbrunsfeld/vim-yankstack'
Bundle 'DoxygenToolkit.vim'
Bundle 'tczengming/headerGatesAdd.vim'
"Bundle 'ShowMarks'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Valloric/YouCompleteMe'
Bundle 'grep.vim'
Bundle 'mbbill/undotree'
" Fast file navigation
Bundle 'wincent/Command-T'
Bundle 'a.vim'

let g:EasyGrepMode = 2     " All:0, Open Buffers:1, TrackExt:2, 
let g:EasyGrepCommand = 0  " Use vimgrep:0, grepprg:1
let g:EasyGrepRecursive  = 1 " Recursive searching
let g:EasyGrepIgnoreCase = 1 " not ignorecase:0
let g:EasyGrepFilesToExclude = "*.bak, *~, cscope.*, *.a, *.o, *.pyc, *.bak"

let g:SuperTabDefaultCompletionType="context"
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 
let g:miniBufExplMoreThanOne=0 
map <F11> :MBEbp<CR> 

let Tlist_Ctags_Cmd='ctags' 
let Tlist_Show_One_File=1 
"不同时显示多个文件的tag，只显示当前文件的 let Tlist_WinWidt =28 
"设置taglist的宽度 let Tlist_Exit_OnlyWindow=1 
"如果taglist窗口是最后1个窗口，则退出vim 
"let Tlist_Use_Right_Window=1 "在右边窗口中显示taglist窗口 
let Tlist_Use_Left_Windo =1 "在左边窗口中显示taglist窗口

set laststatus=2
let &termencoding=&encoding 
set fileencodings=utf(8),gbk
let g:NERDTree_title="[NERDTree]"
let g:winManagerWindowLayout="NERDTree|TagList" 
function! NERDTree_Start() 
	exec 'NERDTree' 
endfunction 
function! NERDTree_IsValid() 
	return 1 
endfunction 
nmap wm :WMToggle<CR>
let NERDTreeWinPos='left'
let NERDTreeWinSize=30
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeDirArrows=0
map <F2> :NERDTreeToggle<CR>

map <F8> :TagbarToggle<CR>
set omnifunc=syntaxcomplete#Complete
set tags+=./../tags

syntax on

" Javascript syntax hightlight
 syntax enable

" Set syntax highlighting for specific file types
autocmd BufRead,BufNewFile Appraisals set filetype=ruby
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd Syntax javascript set syntax=jquery

" Color scheme
colorscheme molokai
highlight NonText guibg=#060606
highlight Folded  guibg=#0A0A0A guifg=#9090D0"

" solarized theme
"set t_Co=256                " Explicitly tell vim that the terminal supports 256 colors, need before setting the colorscheme
"let g:solarized_termcolors=256
"colorscheme solarized
"set background=dark

" vim-powerline
set laststatus=2            " always have status-line'
let g:Powerline_symbols = 'fancy'"

set cursorline   
set cursorcolumn
highlight CursorLine   cterm=NONE ctermbg=black ctermfg=yellow guibg=NONE guifg=NONE
highlight CursorColumn cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
