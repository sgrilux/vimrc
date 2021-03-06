" => General {{{
set modelines=1
" load pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

set history=500         " how many lines of history VIM has to remember

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
set number

set encoding=utf-8

" }}}

" => User Interface {{{

let $LANG='en'
set langmenu=en

set wildmenu        " Turn on the Wild Menu

set cursorline		" Show current position

set cmdheight=2		" height of the command bar

" Status line
set laststatus=2    " alwats show the status line
set statusline=%f
set statusline+=%=
set statusline+=\[%{StatuslineGit()}]
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\ [%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c

set hlsearch		" Highlight search results
set incsearch		" search as characters are entered

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

set lazyredraw		" Redraw only when needed

set magic		    " Turn magic on for regular expressions

set showmatch		" show matching brackets when cursor is over them

nnoremap <leader>tn :call ToggleNumber()<CR>

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

" Indent guidelines settings
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_indent_levels = 30
let g:indent_guides_start_level = 2
let g:indent_guides_auto_colors = 1
let g:indent_guides_guide_size = 1
"Use this option to control whether the default mapping (<Leader>ig) gets set.
let g:indent_guides_default_mapping = 1
:nmap <silent> <Leader>ie <Plug>IndentGuidesEnable
:nmap <silent> <Leader>id <Plug>IndentGuidesDisable


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

"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

augroup configgroup
    autocmd!
    autocmd VimEnter * highlight clear SignColumn
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

function! GitBranch()
    return system("git rev-parse --abbrev-ref HEAD 2>/dev/null| tr -d '\n'")
endfunction

function! StatuslineGit()
    let l:branchname = GitBranch()
    return strlen(l:branchname)>0?'  '.l:branchname.' ':''
endfunction
" }}}

" => Python {{{

let python_highlight_all = 1

augroup pyconfiggroup
    autocmd BufWritePost *.py call Flake8()
    au BufNewFile,BufRead *.py setlocal tabstop=4
    au BufNewFile,BufRead *.py setlocal softtabstop=4
    au BufNewFile,BufRead *.py setlocal shiftwidth=4
    au BufNewFile,BufRead *.py setlocal textwidth=79
    au BufNewFile,BufRead *.py setlocal expandtab
    au BufNewFile,BufRead *.py setlocal autoindent
    au BufNewFile,BufRead *.py setlocal fileformat=unix
augroup END


" }}}

" vim:foldmethod=marker:foldlevel=0
