".vimrc file
" copied from http://net.tutsplus.com (originally)
"

"Forget about compatibility with Vi.  Who cares?
set nocompatible

"Enable filetypes
filetype on
filetype plugin on
filetype indent on
syntax on

"Write the old file out when switching between files.
set autowrite

"Display current cursor position in the lower right corner
set ruler

"Want a different map leader than \
"set mapleader = ",";

"Ever notice a slight lag after typing the leader key + command? This lowers
"the timeout.
set timeoutlen=500

"Switch between buffers without saving
set hidden

"Set the colour scheme.  Change this to your preference
"Here's 100's to choose from:
"http://www.vim.org/scripts/script.php?script_id=625
"colorscheme twilight

"Set font size and type. Depends on resolution. Larger screens, prefer h20
set guifont=Menlo:h14

"Tab stuff
"TODO

"Show command in bottom right portion of the screen
set showcmd

"Show line numbers
set number
set relativenumber

"Indent stuff
set smartindent
set autoindent

"Always show the status line
set laststatus=2

"Prefer a slightly higher line height
set linespace=3

"Set incremental searching
set incsearch

"Set highlighing seaching
set hlsearch

"Use <CR> to disable the search highlight until the next search
nnoremap <CR> :noh<CR><CR>

"case insensitive searching
set ignorecase
set smartcase

"Hide MacVim toolbar by default

"Hard-wrap paragraphs of text
noremap <leader>q gqip

"Enable code folding
set foldenable

"Hide mouse when typing
set mousehide

"Map escape key to jk -- much, much faster
imap jk <esc>

"Backups
set backupdir=~/.vim/tmp/backup// 
set directory=~/.vim/tmp/swap//
set backup

"Show matching brackets
set showmatch

"Highlight the colour column to be textwidth+2 and 120
if v:version >= 703
	"a faint gray color, not too insistent
	highlight ColorColumn term=reverse ctermbg=233 guibg=#202020
	" put the marker(s) at 'textwidth+2' and 120
	set colorcolumn=+2,120
	" if we're called as '*view' or on a console, turn it off
	if v:progname =~? 'view' || &term =~? 'linux|console'
		set colorcolumn=
	endif
endif

