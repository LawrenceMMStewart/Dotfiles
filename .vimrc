set nocompatible              " be iMproved, required
filetype off                  " required


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab' 
Plugin 'preservim/nerdtree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'sheerun/vim-polyglot'
Plugin 'jpalardy/vim-slime'
Plugin 'tpope/vim-commentary'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'ericbn/vim-solarized'
Plugin 'vim-python/python-syntax'
Plugin 'iamcco/markdown-preview.nvim'
Plugin 'arcticicestudio/nord-vim'
Plugin 'lervag/vimtex'
Plugin 'gosukiwi/vim-atom-dark'
Plugin 'sickill/vim-monokai'
Plugin 'Mofiqul/vscode.nvim'
Plugin 'SirVer/ultisnips'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch" foo - searches for foo; append `!` to refresh local cache
" n_highlight_all = 1
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set termguicolors
" colo default
syntax on
set number
" high color mode for iterm2 https://iterm2.com/documentation-highlights.html
set t_Co=256

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"stop jedi python completion from giving doc string on each func
autocmd FileType python setlocal completeopt-=preview

syntax enable
"solarized color scheme
 " set background=light
 " colorscheme solarized
 " let g:airline_theme='solarized'


" set background=dark
colorscheme vscode 
let g:airline_theme='tomorrow'



" "" maybe turn off
let python_highlight_all=1

"allow control n to open NERDTree dir navigation
map <C-n> :NERDTreeToggle<CR>

"close NERDTree if it is the only thing left open in VIM
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"highlight search result 
set hlsearch
"undo search highlights

noremap <silent> <c-h> :let @/ = ""<CR>

" turn the bell noise off 
set belloff=all

if !has('nvim')
				set ttymouse=xterm2
endif

 " setlocal spell
 set spelllang=nl,en_gb
 inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u


" For vimtex skim previewer

" used to be on before tried to debug skim not working 
" let g:vimtex_quickfix_open_on_warning = 0

" For vimtex render of text and cleaning
set conceallevel=1
let g:tex_conceal='abdmg'

" Output latex files into build folder to reduce clutter
let g:vimtex_compiler_latexmk = {
            \ 'build_dir' : 'build',
            \}

let g:tex_flavor='latex' 
let g:vimtex_view_method = 'skim' 
let g:vimtex_view_skim_sync = 1 
let g:vimtex_view_skim_activate = 1 


" Ultisnips 
"
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsEditSplit = 'tabdo'

" Set the filetype based on the file's extension, overriding any
" 'filetype' that has already been set
au BufRead,BufNewFile *.batch set filetype=bash

