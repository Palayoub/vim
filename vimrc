if has("gui_macvim")
    let macvim_hig_shift_movement = 1
	 "colorscheme solarized
	 set guifont=Menlo\ \Regular:h15.5		
	 set autoread
endif
set backspace=indent,eol,start
set tabstop=3
set shiftwidth=3
set nocompatible              " be iMproved, required
set selection=exclusive
filetype off                  " required

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
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
Plugin 'altercation/vim-colors-solarized'  
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}  
Plugin 'kien/ctrlp.vim'  
Plugin 'scrooloose/syntastic'  
Plugin 'crooloose/nerdtree'  
Plugin 'gregsexton/matchtag'
Plugin 'easymotion/vim-easymotion'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'

"Plugin 'Valloric/YouCompleteMe'
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

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
"let g:ycm_register_as_syntastic_checker = 0
"execute pathogen#infect()
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_asm_compiler = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_html_tidy_ignore_errors=["<ion-", "discarding unexpected </ion-", " proprietary attribute \"ng-"]
let g:syntastic_cpp_compiler = "g++-5"
let g:syntastic_cpp_compiler_options = "-std=c++11"
"let g:syntastic_cpp_include_dirs = ["/usr/local/Cellar/gcc5/5.3.0/include/c++/5.3.0", /usr/local/Cellar/gcc5/5.3.0/lib/gcc/5"]
"
" YouCompleteMe options
"

let g:ycm_register_as_syntastic_checker = 0  "default 1
"
let g:session_autoload = 'no'
"let g:session_autoload = 'yes'

"filetype plugin indent on
nnoremap <tab> 		:tabnext<CR>
nnoremap <S-tab> 	:tabprevious<CR>
noremap <C-t>     <Esc>:tabnew<CR>
map <C-f> <Plug>(easymotion-prefix)
"CTRL-J to jum beteween windows
nnoremap <C-J> <C-W><C-W>
nnoremap <C-K> <C-W><C-W>
nnoremap <C-H> <C-W><C-W>
nnoremap <C-L> <C-W><C-W>
map <C-n> :NERDTreeToggle<CR>
map <C-k> :!go %:r && ./%:r<CR>
inoremap <C-k> <Esc>:!go %:r && ./%:r<CR>
set tabpagemax=22
syntax on
set number
set ruler
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" toggle invisible characters
" " toggle invisible characters
"set listchars+=space:.
