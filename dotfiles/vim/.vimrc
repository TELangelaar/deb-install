runtime! debian.vim

call plug#begin('~/.vim/plugged')
call plug#end()

syntax on

" set listchars=space:_,tab:>~ list " this shows spaces as an underscore, and
" tabs as > followed by ~. Since i have expandtab on, this isnt really
" helpful!

set tabstop=8 " \t are 8 spaces (default)
set softtabstop=4 " tab and backspace are 4 spaces
set shiftwidth=4 " levels of indentations are 4 spaces
set expandtab " tabs are converted to spaces

" if you change tw, also change the number in OverLength down below
set tw=80 fo=cq wm=0
nnoremap ,tw :g/./normal gqq<CR>

set foldmethod=indent " folds code to reduce clutter

set hlsearch
nnoremap ,<space> :nohlsearch<CR>
" Ctrl+C now works for copying to clipboard
vnoremap <C-c> "+y
" Ctrl+j/k/h/l lets you switch between files open in :split / :vsplit
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

set number " show line numberv
set showcmd
set cursorline
set showmatch " show matching open or closing bracket
set splitbelow splitright " Opening a split window
set mouse=a " mouse can do stuff
" set termguicolors
" InsertEnter * norm zz --> Vim makes line that you edit middle of the screen
autocmd InsertEnter * norm zz
" BufwritePre* %s/\s\+$//e --> any trailing whitespaces on any line are removed
autocmd BufWritePre * %s/\s\+$//e

" skeletons
if has("autocmd")
    augroup templates
        autocmd BufNewFile *.sh    0r ~/.vim/templates/skeleton.sh
        autocmd BufNewFile *.py    0r ~/.vim/templates/skeleton.py
        autocmd BufNewFile *.c     0r ~/.vim/templates/skeleton.c
        autocmd BufNewFile *.html  0r ~/.vim/templates/skeleton.html
    augroup END
    augroup vimrc_autocmds
        autocmd BufEnter * highlight OverLength ctermbg=darkgrey guibg=#592929
        autocmd BufEnter * match OverLength /\%80v.*/
    augroup END
endif

" abbreviations! but i use it mostly for misspelling
iabbrev teh the
iabbrev hte the

