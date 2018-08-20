
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



" vim-go config

let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1


let mapleader=","
syntax on

au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)

au FileType go nmap <C-]> <Plug>(go-def)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)


" SuperTab config
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabRetainCompletionType=2


" tagbar

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }





nmap <F8> :TagbarToggle<CR>




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

" editor
set t_Co=256     " Explicitly tell vim that the terminal has 256 colors "
set mouse=a      " use mouse in all modes"
set scrolloff=5  " 5 lines above/below cursor when scrolling"
set showmatch    " show matching bracket (briefly jump)
set showcmd      " show typed command in status bar
set title        " show file in titlebar"
set fdm=marker   " flod  








