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
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'morhetz/gruvbox'
Plugin 'The-NERD-tree'
Plugin 'Valloric/YouCompleteMe'

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
"

set autoindent
set smartindent
set wrap
set shiftwidth=4
set number
set hlsearch
set ignorecase
set tabstop=4

map <F4> :bp <BAR> bd<cr>
map <F5> :bprevious<cr>
map <F6> :bnext<cr>

" <F3> NERDTree
map <F3> :NERDTreeToggle<cr>
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1

let g:airline#extensions#tabline#enabled = 1


set background=dark

let g:gruvbox_italic=1
let g:gruvbox_contrast_dark = 'hard'

colorscheme gruvbox

"YCM

let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:ycm_semantic_triggers={
\        'c' : ['->', '.'],
\        'cpp' : ['->', '.', '::'],
\   'java' : ['.'],
\}
let g:ycm_key_list_select_completion=['<C-j>', '<Down>', '<PageDown>']
let g:ycm_key_list_previous_completion=['<C-k>', '<Up>', '<PageUp>']
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_python_binary_path='/Library/Frameworks/Python.framework/Versions/3.6/bin/python3.6'

nnoremap <leader>g :YcmCompleter GoTo<CR>
nnoremap <leader>gg :YcmCompleter GoToImprecise<CR>
nnoremap <leader>d :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>dd :YcmCompleter GoToDefinition<CR>
nnoremap <leader>t :YcmCompleter GetType<CR>
