" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo
autocmd!
set nocompatible
set rtp+=~/.vim/bundle/vundle/
set clipboard=unnamed
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/nerdtree'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/syntastic'
Bundle 'gorodinskiy/vim-coloresque'
Bundle 'mustache/vim-mode'
Bundle 'chriskempson/base16-vim'
Bundle 'majutsushi/tagbar'
Bundle 'jnurmine/zenburn'
Plugin 'pangloss/vim-javascript'
Plugin 'ervandew/supertab'
Plugin 'derekwyatt/vim-scala'
Plugin 'vim-ruby/vim-ruby'
Plugin 'wincent/Command-T'

let g:ctrlp_map='<leader>f'
let g:ctrlp_show_hidden=0
let g:ctrlp_match_window_reversed=1
let g:ctrlp_match_window_bottom=0
let g:ctrlp_max_height=30
let g:ctrlp_working_path_mode='a'
let g:ctrlp_max_files=0
nnoremap <leader>f :CommandT<CR>
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']

" allow backspacing over everything in insert mode
set backspace=eol,indent,start

let g:ackprg = '/opt/twitter/bin/ag --nogroup --nocolor --column'
let g:CommandTFileScanner = "find"
let g:CommandTMatchWindowAtTop = 1
let g:CommandTMatchWindowReverse = 1
let g:CommandTTraverseSCM = "pwd"

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

" move between splits without having to C-w first
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

" Make a backup before overwriting a file.  The backup is removed 
" after the file was successfully written
set writebackup
set equalalways

set ruler		" Show the cursor position all the time 
set expandtab " death to spaces		
set showmatch		" Match Parens
set matchtime=500	" Match for half a second
set autoindent		" Always have autoindenting on
set shiftwidth=2	" Autoindenting uses this spacing
set tabstop=2	 	" Show tabs as 4 spaces
set smarttab		
set shiftround		" Round to the nearest indent level
set pastetoggle=<F3>	" Toggle our paste mode to not indent
set number			" show line numbers
set cursorline " highlight current line

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

" Put cursor where you were when you last edited file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

if has('gui_running')
  set guifont=Inconsolata\ XL:h12
  set antialias
  set bg=dark
  colorscheme base16-railscasts
else
  set bg=dark
  colorscheme jellybeans
endif
let g:tagbar_ctags_bin="/opt/twitter/bin/ctags"

" Show trailing whitepace and spaces before a tab:
highlight ExtraWhitespace ctermbg=Red guibg=Red
autocmd Syntax * syn match ExtraWhitespace /\s\+$/ containedin=ALL

" Make sure splits stay sized when window is resized
autocmd VimResized * wincmd =

set laststatus=2

set wildignore +=.git,vendor/bundle,.swp.orig,*/tmp/*,*.txt,*.class,*/macaw/target/*,*/node_modules/*,*/target/*
let Tlist_Use_Right_Window = 1

" Map F4 to show taglist (requires ctags+ctags vim plugin)
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

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
autocmd FileType scala 2match ErrorMsg '\%120v.'

set textwidth=80

runtime! macros/matchit.vim

let g:mustache_abbreviations = 1

autocmd QuickFixCmdPost *grep* cwindow
set shell=zsh

