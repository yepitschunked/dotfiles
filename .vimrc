" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set encoding=utf-8
set nocompatible
set hidden
set cmdheight=2
autocmd!
set wrap
set clipboard=unnamed
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))
set title
set updatetime=200
set shortmess+=c
set termguicolors

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'sheerun/vim-polyglot'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'k0kubun/vim-open-github'
NeoBundle 'mileszs/ack.vim'
"NeoBundle 'w0rp/ale'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'neoclide/coc.nvim', 'release', { 'build': { 'others': 'git checkout release' } }
"NeoBundle 'Valloric/YouCompleteMe', {
"  \   'build_commands': ['python'],
"  \   'build': {
"  \      'others': "python install.py --ts-completer"
"  \    }
"  \ }
NeoBundle 'gorodinskiy/vim-coloresque'
NeoBundle 'vim-airline/vim-airline'
" NeoBundle 'itchyny/lightline.vim'
NeoBundle 'wincent/Command-T', {
  \   'build_commands': ['make', 'ruby'],
  \   'build': {
  \      'others': 'cd ruby/command-t/ext/command-t && { make clean; ruby extconf.rb && make }'
  \   }
  \ }
NeoBundle 'chriskempson/base16-vim'
call neobundle#end()
NeoBundleCheck

autocmd CursorHold * silent call CocActionAsync('highlight')
let g:coc_node_path = '/Users/victor_lin/.nvm/versions/node/v10.16.0/bin/node'
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
let g:indentLine_enabled = 1
set completeopt+=menu,preview
nmap <D-d> <Plug>(coc-definition)
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <leader>f :CommandT<CR>
nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>
"autocmd CursorHold * silent :YcmCompleter GetType
" allow backspacing over everything in insert mode
set backspace=eol,indent,start

let g:ackprg = 'ag --vimgrep'
let g:CommandTMaxHeight = 25
let g:CommandTFileScanner = "watchman"
let g:CommandTGitIncludeUntracked = 1
let g:CommandTInputDebounce = 50
let g:CommandTMatchWindowAtTop = 0
let g:CommandTMatchWindowReverse = 1
let g:CommandTTraverseSCM = "pwd"
" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
"let g:ycm_filetype_blacklist = { 'yaml' : 0 }
"let g:ycm_show_diagnostics_ui = 0
"let g:ycm_auto_trigger = 1
"let g:ycm_add_preview_to_completeopt = 1
"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_min_num_of_chars_for_completion = 1
"let g:ycm_seed_identifiers_with_syntax = 1
"let g:ycm_collect_identifiers_from_tags_files = 1

let g:lightline = {
  \ 'active': {
    \ 'left': [ [ 'mode', 'paste' ],
    \           [ 'readonly', 'relativepath', 'modified' ] ],
    \ 'right': [ [ 'lineinfo' ],
    \            [ 'percent' ],
    \            [ 'fileformat', 'fileencoding', 'filetype' ] ] }
\ }

" move between splits without having to C-w first
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l

" Make a backup before overwriting a file.  The backup is removed
" after the file was successfully written
set writebackup
set equalalways
set eadirection=hor

set ruler		" Show the cursor position all the time
set showmatch		" Match Parens
set matchtime=500	" Match for half a second
set autoindent		" Always have autoindenting on
set smartindent
set expandtab
set shiftwidth=2	" Autoindenting uses this spacing
set tabstop=2	 	" Show tabs as 4 spaces
set smarttab
set shiftround		" Round to the nearest indent level
set pastetoggle=<F3>	" Toggle our paste mode to not indent
set number			" show line numbers
set cursorline

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

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
else
  colorscheme base16-chalk
  set bg=dark
endif

" Show trailing whitepace and spaces before a tab:
highlight ExtraWhitespace ctermbg=Red guibg=Red
autocmd Syntax * syn match ExtraWhitespace /\s\+$/ containedin=ALL

" Make sure splits stay sized when window is resized
set laststatus=2

set wildignore +=.git,vendor/bundle,.swp.orig,*/tmp/*,*.txt,*.class,*/macaw/target/*,*/node_modules/*,*/target/*

"let g:ale_ruby_rubocop_options = '-c .rubocop.yml'
"let g:ale_lint_delay = 1000
"let g:ale_lint_on_text_changed = 'normal'
"let g:ale_open_list = 0
"let g:ale_linters = {'java': [], 'ruby': ['rubocop']}
"let g:ale_lint_on_enter = 1
"let g:ale_fixers = {
"\ 'javascript': ['eslint'],
"\ 'typescript': ['eslint'],
"\ }
"let g:ale_javascript_eslint_suppress_eslintignore = 1

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

runtime! macros/matchit.vim

let g:mustache_abbreviations = 1

autocmd QuickFixCmdPost *grep* cwindow
set shell=/bin/sh
autocmd VimResized * wincmd =
let g:airline_powerline_fonts = 1

