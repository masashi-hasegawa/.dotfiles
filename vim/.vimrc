filetype plugin indent on

" --------------------------------
" vim-plug
" --------------------------------
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'mattn/vim-goimports'
Plug 'tpope/vim-endwise'
Plug 'mattn/emmet-vim'
Plug 'vim-syntastic/syntastic'
call plug#end()


" --------------------------------
" common
" --------------------------------
set autoindent
set background=dark
set clipboard=unnamed
set encoding=utf-8
set expandtab
set hlsearch
set noswapfile
set number
set shiftwidth=2
set tabstop=2
set iskeyword+=\-
set nowrap
set ignorecase
set smartcase
set list
set wildmenu
set showcmd
set smarttab
set laststatus=2
set incsearch
set ruler
set cursorline
syntax on


" --------------------------------
" set per extensions
" --------------------------------
autocmd Filetype java   setlocal ts=4 sw=4 cc=100
autocmd Filetype php    setlocal ts=4 sw=4
autocmd Filetype python setlocal ts=2 sw=2
autocmd Filetype ruby   setlocal ts=2 sw=2 cc=100
autocmd Filetype xml    setlocal ts=2 sw=2 
autocmd Filetype html   setlocal ts=2 sw=2 cc=100
autocmd Filetype sh     setlocal ts=2 sw=2 cc=100
autocmd Filetype sql    setlocal ts=2 sw=2 
autocmd BufNewFile,BufRead *.less set syntax=css


" --------------------------------
" key mapping
" --------------------------------
map <C-c> <esc>


" --------------------------------
" netrw 
" --------------------------------
let g:netrw_liststyle = 3
let g:netrw_altv = 1
let g:netrw_alto = 1


" --------------------------------
" nerdtree
" --------------------------------
"map <C-j> :tabp<CR>
"map <C-k> :tabn<CR>
"map <C-t> :tabe 
let NERDTreeWinSize=40


" --------------------------------
" syntastic
" --------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': [
  \ 'ruby', 'javascript','coffee', 'scss', 'html', 'haml', 'slim', 'sh',
  \ 'spec', 'vim', 'zsh', 'sass', 'eruby'] }
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_coffee_checkers = ['coffeelint']
let g:syntastic_scss_checkers = ['scss_lint']
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_error_symbol='✗'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_style_warning_symbol = '⚠'
