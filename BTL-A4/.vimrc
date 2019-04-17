" Folding is experimental and does not work well
"let g:pymode_folding = 0
"" To ignore pylint errors
let g:pymode_lint_ignore = ["E114", "E111", "W",]
"https://stackoverflow.com/questions/11560201/backspace-key-not-working-in-vim-vi
" This seems to be needed with the vim 8.1
set backspace=indent,eol,start"

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

" Crypto
set cm=blowfish2
"set viminfo=
set nobackup
set nowritebackup

"Snippets
map ,p oimport ipdb; ipdb.set_trace(context=30)<ESC>
"map ,p oimport pdb; pdb.set_trace()<ESC>
map ,d :read !date "+\%Y-\%m-\%d"<ESC>
"Todo maps
" todo, done, canceled
map ,t I- [ ] <ESC>
map ,x :s@\[ \]@[x]@<ESC>
map ,c :s@\[ \]@x@<ESC>
