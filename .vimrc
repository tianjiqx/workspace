
" tianjiqx vim configure
" tianjiqx@126.com



set nocompatible              " be iMproved, required
filetype off                  " required

" history : how many lines of history VIM has to remember
set history=2000

" encoding
set encoding=utf-8
set termencoding=utf-8



" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" support golang 
Plugin 'fatih/vim-go'

" auto complete
Plugin 'ervandew/supertab'

" dir tree
Plugin 'scrooloose/nerdtree'

Plugin 'majutsushi/tagbar'

Plugin 'flazz/vim-colorschemes'
Plugin 'liuchengxu/space-vim-dark'

" file search
Plugin 'kien/ctrlp.vim'

"  
Plugin 'Raimondi/delimitMate'

" math{},  % goto
Plugin 'tmhedberg/matchit'

"
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"
Plugin 'rking/ag.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" SuperTab
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabRetainCompletionType=2


" tagbar

nmap <F9> :TagbarToggle<CR>


" color  config
" colorscheme molokai
colorscheme space-vim-dark
hi Comment guifg=#5C6370 ctermfg=59


" NERDTree config
autocmd vimenter * NERDTree
autocmd VimEnter * wincmd w
map <F10> :NERDTreeToggle<CR>
" show hidden file
let NERDTreeShowHidden=1



" CtrlP
"let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.gz     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_map = '<c-p>' 
let g:ctrlp_cmd = 'CtrlP'

" dlelimiatemate
" for python docstring
au FileType python let b:delimitMate_nesting_quotes = ['"']


"vim-airline
let g:airline_theme='murmur'


" vim  common config

" show line number
set number

" 
set cursorline

" search 
set hlsearch  
set incsearch  

" tab
set cindent
set tabstop=2
set shiftwidth=2



