" python-mode
let g:pymode_options_max_line_length = 120
let g:pymode_lint_options_pep8 = {'max_line_length': g:pymode_options_max_line_length}
let g:pymode_options_colorcolumn = 1

" avoid cursor jumping back when entering insert with i
":inoremap <silent> <Esc> <Esc>`^"
"
"https://stackoverflow.com/questions/11560201/backspace-key-not-working-in-vim-vi
"" This seems to be neede with the vim 8.1
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
"set colorcolumn=79
"set colorcolumn=120
" clearer
set background=dark"
colorscheme habamax
"set splitright
"clearer colorscheme fro vimdiff over ssh
if &diff
   " From http://stackoverflow.com/questions/2019281/load-different-colorscheme-when-using-vimdiff
   colorscheme mycolorsheme
endif
"
" gf on vertical split
map gv :vertical wincmd f<CR>"

"Snippets
map ,p oimport ipdb; ipdb.set_trace(context=30) # noqa<ESC>
"map ,p oimport pdb; pdb.set_trace() # noqa<ESC>
"map ,p oset_trace()<ESC>
"map ,p ofrom ipdb import set_trace; set_trace(context=30) # noqa<ESC>
map ,d :read !date "+\%Y-\%m-\%d"<ESC>
map ,s :read !date "+\%H:\%M"<ESC>
"Todo maps
" todo, done, canceled
map ,t I- [ ] <ESC>
map ,x :s@\[ \]@[x]@<ESC>
map ,c :s@\[ \]@x@<ESC>
map ,r :exec '!'.getline('.')<ESC>
