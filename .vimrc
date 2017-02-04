"added by wwy for vim 2017_01_26
set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim
set laststatus=2

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

"control indent
Plugin 'tmhedberg/SimpylFold'

"retract automatically
Plugin 'vim-scripts/indentpython.vim'

"youcompleteme
Plugin 'Valloric/YouCompleteMe'

"syntastic
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'

"color
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

"structure
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

"search
Plugin 'kien/ctrlp.vim'

"git
Plugin 'tpope/vim-fugitive'

"powerline
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

"indentline
Plugin 'Yggdroot/indentLine' 

"autopep8
Plugin 'tell-k/vim-autopep8'

"auto-pairs
Plugin 'jiangmiao/auto-pairs'

"nerdcommenter
Plugin 'scrooloose/nerdcommenter'

"ctrlshift
Plugin 'dyng/ctrlsf.vim'

"tagbar
Plugin 'majutsushi/tagbar'

"airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"rainbow_parentheses
Plugin 'kien/rainbow_parentheses.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



set splitbelow
set splitright
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za
let g:SimpylFold_docstring_preview=1

"PEP8
au BufNewFile,BufRead *.py
\ set tabstop=4
\ set softtabstop=4
\ set shiftwidth=4
\ set textwidth=79
\ set expandtab
\ set autoindent
\ set fileformat=unix
let g:autopep8_disable_show_diff=1

"indentline
let g:indentLine_char='┆'
let g:indentLine_enabled = 1
let g:indentLine_color_term = 239
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2

"blank character
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"encode
set encoding=utf-8

"youcompleteme
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:ycm_server_python_interpreter='/usr/bin/python'
set completeopt=longest,menu
let g:ycm_path_to_python_interpreter= '/usr/local/bin/python'
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_complete_in_comments=1
let g:ycm_collect_identifiers_from_comments_and_strings=0
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_cache_omnifunc=0
let g:ycm_comlete_in_strings=1

"python with virtualenv support
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"  project_base_dir = os.environ['VIRTUAL_ENV']
"  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"  execfile(activate_this, dict(__file__=activate_this))
"EOF

"color
let python_highlight_all=1
syntax on

"if has('gui_running')
"  set background=dark
"  colorscheme solarized
"else
"  colorscheme Zenburn
"endif

call togglebg#map("<F5>")

"for .pyc
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
map <F3> :NERDTreeToggle<CR>
nmap ,t :NERDTreeFind<CR>
let NERDTreeChDirMode=1
let NERDTreeShowBookmarks=1

"syntastic
nmap <leader>e :Errors<CR>
nmap <leader>n :Inext<CR>
nmap <leader>p :Iprevious<CR>
let g:syntastic_check_on_open = 1

"line number
set nu

set clipboard=unnamed

" Pathogen load
" filetype off

" call pathogen#infect()
" call pathogen#helptags()

" filetype plugin indent on
" syntax on"



"set insearch
"highlight reaserch
set hlsearch    
set showmatch
"set backspace=2

"set autoread
"highlight this line
set cursorline
set cursorcolumn

"nerdcommenter
let mapleader=','
map <F4> <leader>ci<CR>

"ctrlsf
map f <Plug>CtrlSFPrompt

"tagbar
map <F6> :TagbarToggle<CR>

"airline
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep=''
let g:airline#extensions#tabline#left_alt_sep='|'
let g:airline_theme="wombat"   
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'        

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ] 

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
