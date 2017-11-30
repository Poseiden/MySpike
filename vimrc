set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'jason0x43/vim-js-indent'
Plugin 'leafgarland/typescript-vim'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'mileszs/ack.vim'
Bundle 'wakatime/vim-wakatime'

call vundle#end()            " required

filetype plugin indent on
syntax on
set number
set relativenumber
set hlsearch

" netrw plugin
let g:netrw_preview = 1
autocmd StdinReadPre * let s:std_in=1
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ctrlp plugin
let g:ctrlp_custom_ignore = {
  \ 'dir' : '\v[\/](node_modules|dist)|(\.(git|hg|svn))$',
  \ 'file' : '\v\.(swp)$',
  \ }
let g:ctrlp_show_hidden = 1

set tabstop=2
set shiftwidth=2
set expandtab
set cursorline
set laststatus=2

filetype plugin on
set omnifunc=syntaxcomplete#Complete

let mapleader = ","

"highlight search result switch
:noremap <Space> :set hlsearch! hlsearch?<CR>

set fdm=indent

"Find text selected in visual mode
:vnoremap // y/<C-R>"<CR>

"Copy currrent file name or full file path to system clipboard.
nmap ;' :let @*=expand("%")<CR>
nmap ,. :let @*=expand("%:p")<CR>

"To press F5 under ctrlp opening for finding a file node which created by NERDTree without reopen vim
let g:NERDTreeChDirMode       = 2
let g:ctrlp_working_path_mode = 'rw'

"Mapping shortcut for navigating in split window.
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Only enable emmet plugin for insert mode and html css file type.
let g:user_emmet_mode='i'    "only enable insert mode functions
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

"resize window vertically
if bufwinnr(1)
  map + :resize +5<CR>
  map _ :resize -5<CR>
endif

"resize window horizontally
if bufwinnr(1)
  map & :vertical resize -5<CR>
  map * :vertical resize +5<CR>
endif

"show dattime on statusbar
set ruler
set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)

"show datetime on vim-airline
:let g:airline_section_b = '%{strftime("%H:%M")}'
