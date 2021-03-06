execute pathogen#infect()
syntax on
filetype plugin indent on
set term=screen-256color

" ----------------------------- NERDTree Configuration------------------------
"  open a NERDTree automatically when vim starts up
autocmd vimenter * NERDTree

" open a NERDTree automatically when vim starts up if no files were specified
autocmd vimenter * if !argc() | NERDTree | endif

" map a specific key or shortcut to open NERDTree
map <C-n> :NERDTreeToggle<CR>

" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" cursor always starts in the NERDTree window 
" http://stackoverflow.com/questions/1447334/how-do-you-add-nerdtree-to-your-vimrc
autocmd VimEnter * wincmd p
" Easy window navigation, Just use CTRL + hjkl for navigation inplace of CTRL
" + W

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" ------------------------------- NERDTree Configuration END ----------------

