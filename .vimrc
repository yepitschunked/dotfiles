" YOINKED FROM CCOWART!!!
set nocompatible

" allow backspacing over everything in insert mode
set backspace=eol,indent,start

" Make a backup before overwriting a file.  The backup is removed 
" after the file was successfully written
set writebackup

set ruler		" Show the cursor position all the time 
set noexpandtab		" Let tabs be tabs
set showmatch		" Match Parens
set matchtime=500	" Match for half a second
set autoindent		" Always have autoindenting on
set shiftwidth=4	" Autoindenting uses this spacing
set tabstop=4		" Show tabs as 4 spaces
set smarttab		
set shiftround		" Round to the nearest indent level
set pastetoggle=<F3>	" Toggle our paste mode to not indent
set number			" show line numbers
set clipboard=unnamed

" Better search options
set ignorecase		
set incsearch		" incremental search
set hls				" highlight your results

" Concessions to modernity
set guifont=Monaco:h12
set mouse=a
set t_Co=256

" Make vim smart
syntax on
filetype plugin on
filetype indent on
if has('gui_running')
	colorscheme railscasts
else
	let g:solarized_termcolors=16
	set background=light
	colorscheme solarized
endif

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

" Mappings
" run one rspec example or describe block based on cursor position
map !s :RunSpecLine<CR>
" run full rspec file
map !S :RunSpec<CR>
 
