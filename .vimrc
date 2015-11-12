set history=500

" enable filetype plugins
filetype plugin on
filetype indent on

" set to auto read when a file is changed from the outside
set autoread

let mapleader="'"
let g:mapleader="'"

" fast saving
nmap <leader>w :w!<cr>

" set 7 lines to the cursor - when moving vertically using j/k
set so=7

" enable a menu at the bottom of the vim window
" on first tab, list of completions will be shown and command completed to longest
" common command
" on second tab, the wildmenu shows up with all completions that were listed
set wildmenu
set wildmode=list:longest,full

" ignore compiled files
set wildignore=*.o,*~,*.pyc,.git\*,.hg\*,.svn\*

" always show current position
set ruler

" height of the command bar
set cmdheight=2

" configure backspace to delete indentation and where insert mode started
set backspace=indent,eol,start
set whichwrap+=<,>,h,l

" try to be smart about cases when searching
set smartcase

" highlight search results
set hlsearch

" display match for a search pattern when halfway typing it
set incsearch

" for regex turn magic on
set magic

" show matching brackets
set showmatch

" no annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"enable syntax highlighting
syntax enable

colorscheme monokai

" vim will try to use colours that look good on dark background
set background=dark

set encoding=utf8

" use spaces instead of tabs
set expandtab

set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
" number of visual spaces per tab
set tabstop=4 
" number of spaces in tab in insert mode. 
" number of spaces inserted when you type <tab> and number of spaces removed when you type backspace
set softtabstop=4   

" wrap long lines at a character in 'breakat' rather than last char that fits on screen
set lbr

" max width of text that is being inserted
set textwidth=500

set autoindent
set smartindent
set wrap

" vmode: pressing * or # searches for current selection
vnoremap <silent> * :call VisualSelection('f', '')<CR>
vnoremap <silent> # :call VisualSelection('b', '')<CR>

" treat long lines as break lines
map j gj
map k gk

" map <space> to / and ctrl-<space> to ?
map <space> /
map <C-space> ?

" smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" always show status line
set laststatus=2

" format the status line
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ [%l,%c\/%L]

" when you press <leader>r, you can search and replace the selected text
vnoremap <silent> <leader>r :call VisualSelection('replace', '')<CR>

" remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

" turn persistent undo on
set undodir=~/tmp/
set undofile

" highlight current line; removed because hard to see underlines, especially in vars
" set cursorline

" redraw only when needed
set lazyredraw


