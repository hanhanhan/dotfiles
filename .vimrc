" General
set nocompatible
"" filetype off
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100) " Highlight characters at long lines
set listchars=tab:>~,nbsp:_,trail:. " Show whitespace
set list
set encoding=utf-8
set nu

"NERDcommenter"

" Colors on Mac
syntax on
set t_Co=256
colorscheme evening

" KeyMappings
inoremap ;; <esc>
nnoremap ; :
nnoremap <down> <Nop>
nnoremap <up> <Nop>
noremap <left> gT
noremap <right> <c-w>w

"NERD Commenter"
"noremap <leader>cc <c-/>

" Bracket/Quote Matching
" http://vim.wikia.com/wiki/Making_Parenthesis_And_Brackets_Handling_Easier
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap " ""<Esc>i

" Python
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
""    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" Plugins
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes"
	"Status"
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	":help NERDCommenter"
	Plug 'scrooloose/nerdcommenter'
	Plug 'vim-scripts/closetag.vim'
	"Python"
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'nvie/vim-flake8'
call plug#end()
