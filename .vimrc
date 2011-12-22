" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo
" YOINKED FROM CCOWART!!!
set nocompatible

" allow backspacing over everything in insert mode
set backspace=eol,indent,start

" Make a backup before overwriting a file.  The backup is removed 
" after the file was successfully written
set writebackup

set ruler		" Show the cursor position all the time 
set expandtab		
set showmatch		" Match Parens
set matchtime=500	" Match for half a second
set autoindent		" Always have autoindenting on
set shiftwidth=2	" Autoindenting uses this spacing
set tabstop=2		" Show tabs as 4 spaces
set smarttab		
set shiftround		" Round to the nearest indent level
set pastetoggle=<F3>	" Toggle our paste mode to not indent
set number			" show line numbers
set cursorline
let g:zenburn_unified_CursorColumn = 1

" Better search options
set smartcase		
set ignorecase
set incsearch		" incremental search
set hls				" highlight your results

" Concessions to modernity
set mouse=a
set t_Co=256

" Make vim smart
syntax on
filetype plugin on
filetype indent on
" Autocommands
au BufNewFile,BufRead notes iab <expr> dts strftime("%d %B %Y %I:%M%p")
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
if filereadable($HOME . '/.local_vimrc')
	au VimEnter * so ~/.local_vimrc
endif

set background=dark
if has('gui_running')
	set guifont=Inconsolata_XL:h12
endif
colorscheme jellybeans

" Lets you ctrl+hjkl to move between splits
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 
let g:miniBufExplUseSingleClick = 1

let g:CommandTMatchWindowAtTop = 1
let g:CommandTMaxHeight = 15
let g:CommandTMaxDepth = 20
let g:CommandTMaxFiles = 15000
let g:CommdTSelectPrevMap=['<Esc>OA', '<Up>']
let g:CommdTSelectNextMap=['<Esc>OB', '<Down>']

set wildignore +=.git,vendor/bundle

let Tlist_Use_Right_Window = 1

" Map F4 to show taglist (requires ctags+ctags vim plugin)
map <F4> :Tlist<CR>
map <Leader>f :CommandT <CR>
map <Leader>b :FufBuffer <CR>

" Fix the damn typos
command! Q  quit
command! W  write
command! Wq wq
command! WQ wq
command! Qa qa
command! QA qa
command! Wqa wqa
command! WQa wqa
command! WQA wqa

"t = Auto-wrap text using textwidth
"c Auto-wrap comments using textwith, inserts comment leader
"r Autoinsert comment leader in insert mode
"q allow formatting of comments with 'gq'
"a autoformatting of paragraphs
"n recognize numbered lists when formatting text
"2 use the indentation of the second line of the paragraph to format the
"  paragraph
"b auto-wrap at blanks at or before 'textwidth'
"l long lines are not broken in insert mode (!!)
set formatoptions=cqnb
"set formatoptions+=ta2

autocmd BufReadPost fugitive://* set bufhidden=delete

set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" Mappings
" run one rspec example or describe block based on cursor position
map !s :RunSpecLine<CR>
" run full rspec file
map !S :RunSpec<CR>
let g:RspecOpts = "--format documentation"
 
