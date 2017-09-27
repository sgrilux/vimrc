" => General {{{
set modelines=1
" load pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

set history=500         " how many lines of history VIM has to remember

filetype plugin on
filetype indent on

set autoread

let mapleader=","
let g:mapleader=","

nmap <leader>w :w!<cr>  " Fast saving
nmap <leader>x :x!<cr>  " Fast saving + quit
nmap <leader>q :q!<cr>  " Fast quit - no saving

" edit vimrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>


" save session
nnoremap <leader>s :mksession<CR>

set paste

nnoremap <leader>tn :call ToggleNumber()<CR>

set number

" }}}

" => User Interface {{{

let $LANG='en'
set langmenu=en

set wildmenu        " Turn on the Wild Menu

set cursorline		" Show current position

set cmdheight=2		" height of the command bar

set hlsearch		" Highlight search results
set incsearch		" search as characters are entered

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

set lazyredraw		" Redraw only when needed

set magic		    " Turn magic on for regular expressions

set showmatch		" show matching brackets when cursor is over them

" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

" toggle NERDTreee
nnoremap <leader>n :NERDTreeToggle<CR>
" }}}

" => Color and Fonts {{{

syntax enable		" Enable syntax highlighting

" Set theme
try
	colorscheme slate
catch
endtry

set background=dark

" }}}

" => Indentation,tabs and text {{{

set paste           " Don't mess up when pasting

set expandtab		" Replace <TAB>s with spaces
set tabstop=4		" Replace 1 tab with 4 spaces
set softtabstop=4	"
set shiftwidth=4
set smarttab

set autoindent
set smartindent

set colorcolumn=80  " Show the column 80

" highlight last inserted text
nnoremap gV `[v`]

" }}}

" => Movements {{{
" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" }}}

" => Backups {{{
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" }}}

" => Misc {{{
" Remove the ^M
noremap <Leader>m mmhmt:%s/<C-V><cr>//ge<cr> 'tzt'm

augroup configgroup
    autocmd!
    autocmd VimEnter * highlight clear SignColumn
    "autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md
    "            \:call <SID>StripTrailingWhitespaces()
    autocmd FileType java setlocal noexpandtab
    autocmd FileType java setlocal list
    autocmd FileType java setlocal listchars=tab:+\ ,eol:-
    autocmd FileType java setlocal formatprg=par\ -w80\ -T4
    autocmd FileType php setlocal expandtab
    autocmd FileType php setlocal list
    autocmd FileType php setlocal listchars=tab:+\ ,eol:-
    autocmd FileType php setlocal formatprg=par\ -w80\ -T4
    autocmd FileType ruby setlocal tabstop=2
    autocmd FileType ruby setlocal shiftwidth=2
    autocmd FileType ruby setlocal softtabstop=2
    autocmd FileType ruby setlocal commentstring=#\ %s
    autocmd FileType python setlocal commentstring=#\ %s
    autocmd BufEnter *.cls setlocal filetype=java
    autocmd BufEnter *.zsh-theme setlocal filetype=zsh
    autocmd BufEnter Makefile setlocal noexpandtab
    autocmd BufEnter *.sh setlocal tabstop=2
    autocmd BufEnter *.sh setlocal shiftwidth=2
    autocmd BufEnter *.sh setlocal softtabstop=2
augroup END

" }}}

" => Custom functions {{{

" toggle between number and relativenumber
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunction

" }}}

" vim:foldmethod=marker:foldlevel=0
