" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

"syntax enable
set number
" Identation
syntax on
set autoindent
set expandtab
set tabstop=4
"Highlight searched words
set hlsearch
set colorcolumn=79
"colorscheme desert 
"set splitright
"clearer colorscheme fro vimdiff over ssh
"if &diff
    " From http://stackoverflow.com/questions/2019281/load-different-colorscheme-when-using-vimdiff
 "   colorscheme mycolorsheme 
"endif

"Snippets
map ,p oimport ipdb; ipdb.set_trace(context=30)<ESC>
"map ,p oimport pdb; pdb.set_trace()<ESC>
map ,d :read !date "+\%Y-\%m-\%d"<ESC>
"Todo maps
" todo, done, canceled
map ,t I- [ ] <ESC>
map ,x :s@\[ \]@[x]@<ESC>
map ,c :s@\[ \]@x@<ESC>
