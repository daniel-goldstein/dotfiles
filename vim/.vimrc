" Finally figuring out my own vim confuration woohoo

" Plugins -----------------------------------------------
execute pathogen#infect()

" Leader
let mapleader=","

" Backspace ---------------------------------------------
set backspace=indent,eol,start

" Colors ------------------------------------------------
syntax enable         " How does one not use syntax highlighting??
colorscheme solarized " Maybe find a more interesting one
set background=light


" Spaces and Tabs ---------------------------------------
set tabstop=4      " spaces shown for <TAB>
set softtabstop=4  " render this many spaces when inserting <TAB>
set shiftwidth=4   " insert that many spaces when entering onto new indent
set expandtab      " insert spaces instead of <TAB>s


" UI Config ---------------------------------------------
set number         " display line numbers
set showcmd        " show command in bottom bar
set ruler          " show row/col numbers in the status bar

" set cursorline     " underline current line
filetype indent on " filetype detection and loading of lang specific files

set wildmenu       " visual autocomplete for command menu
set wildignore=*.o,*~,*.pyc,*/.git/*,*/.DS_Store
set lazyredraw     " don't redraw during macros
set showmatch      " show matching [{()}]
set so=7           " set lines buffer from the top/botom of the screen


" Search ------------------------------------------------
set incsearch      " search as characters are entered
set hlsearch       " highlight matches
nnoremap <leader><space> :nohlsearch<CR> " unhighlight


" Folding -----------------------------------------------
set foldenable        " enable folding
set foldlevelstart=10 " open most folds by default
set foldnestmax=10    " 10 nested fold max
nnoremap <space> za   " space opens/closes folds


" Tabs --------------------------------------------------
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t<leader> :tabnext 

