" Folding is experimental and does not work well
"let g:pymode_folding = 0
"" To ignore pylint errors
" This does not work, disables all errors
" let g:pymode_lint_ignore="E501,W601"
"let g:pymode_python = 'python3'
"https://stackoverflow.com/questions/11560201/backspace-key-not-working-in-vim-vi
" This seems to be neede with the vim 8.1
set backspace=indent,eol,start"

" pymode 120 chars
let g:pymode_options_max_line_length = 120
let g:pymode_lint_options_pep8 = {'max_line_length': g:pymode_options_max_line_length}
let g:pymode_options_colorcolumn = 1
" crop at 79
set colorcolumn=120

"syntax enable
set number
" Identation
syntax on
set autoindent
set expandtab
set tabstop=4
"Highlight searched words
set hlsearch
set nowrap
colorscheme habamax
"set splitright
"colorschemes
if &diff
   " From http://stackoverflow.com/questions/2019281/load-different-colorscheme-when-using-vimdiff
	colorscheme mycolorsheme 
endif
"

" gf on vertical split
map gv :vertical wincmd f<CR>"

" Crypto
set cm=blowfish2
"set viminfo=
set nobackup
set nowritebackup

"Snippets
"map ,p oimport ipdb; ipdb.set_trace(context=30)<ESC>
map ,p ofrom ipdb import set_trace; set_trace(context=30) # noqa<ESC>
"map ,p oimport pdb; pdb.set_trace()<ESC>
map ,d :read !date "+\%Y-\%m-\%d"<ESC>
map ,s :read !date "+\%H:\%M"<ESC>
"Todo maps
" todo, done, canceled
map ,t I- [ ] <ESC>
map ,x :s@\[ \]@[x]@<ESC>
map ,c :s@\[ \]@x@<ESC>
map ,r :exec '!'.getline('.')<ESC>
map ,o :exec "!open ".getline('.')<ESC>
map ,b :exec "!open https://duckduckgo.com/?q=".getline('.')<ESC>
