
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

"markdown
Plugin 'iamcco/markdown-preview.vim'

" c++ highlight 
Plugin 'octol/vim-cpp-enhanced-highlight'

"cpp flod 
"too slow
"Plugin 'LucHermitte/VimFold4C'

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
let g:go_highlight_function_calls = 1

let g:go_auto_type_info = 1
let g:go_auto_sameids = 1

"let g:go_fmt_experimental = 1 

let mapleader=","
syntax on

au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <F4> :! go run %<CR>

au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)

au FileType go nmap <C-]> <Plug>(go-def)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

au FileType go nmap <Leader>i <Plug>(go-info)
" import tool show interface implements list
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>e <Plug>(go-rename)



" SuperTab config
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabRetainCompletionType=2


" tagbar
let g:tagbar_ctags_bin='/usr/bin/ctags'
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

" Ctags
nmap <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>


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

"markdown-preview
let g:mkdp_auto_start=1
let g:mkdp_auto_open=1


"c++ high light set
"高亮类，成员函数，标准库和模板
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1

"cpp flod 
"let g:fold_options = {
""   \ 'fold_blank': 0,
""   \ 'fold_includes': 0,
""   \ 'max_foldline_length': 'win',
""   \ 'merge_comments' : 1,
""   \ 'show_if_and_else': 1,
""   \ 'strip_namespaces': 1,
""   \ 'strip_template_arguments': 1
""   \ }



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
set expandtab  "space replace tab


" editor
set t_Co=256     " Explicitly tell vim that the terminal has 256 colors "
set mouse=a      " use mouse in all modes"
set scrolloff=5  " 5 lines above/below cursor when scrolling"
set showmatch    " show matching bracket (briefly jump)
set showcmd      " show typed command in status bar
set title        " show file in titlebar"
set fdm=marker   " flod



" share clipboard
set clipboard+=unnamed 

" updatetime  100ms
set updatetime=100

"ignorecase
set ignorecase

" smart way to move between windows
map<C-j> <C-W>j
map<C-k> <C-W>k
map<C-h> <C-W>h
map<C-l> <C-W>l

" copy 
vmap <leader>f "+y
nmap <leader>v "+gp


" 
nnoremap <F2> :set nonumber! number?<CR>
nnoremap <F3> :set wrap! wrap?<CR>



