" Turn on line numbering
set number

" Case insensitive search
set ic

" highlights searched items
set hlsearch

" Set tab length
set  softtabstop=2

" Set line to appear where cursor is
set cursorline

"Graphical autocomplete for commands
set wildmenu

"Matches parentheses and brackets when hovered over one
set showmatch

"map - to move a line down
noremap - ddp

"map _ to move a line up
noremap _ ddbP

"map leader-d to delete a line in insert mode
inoremap <leader>d <esc>ddi

"map leader-u to make all letters in a word uppercase in insert mode
inoremap <leader>u <esc>veU<esc>i

"map leader-u to make all letters in a word uppercase in normal mode
nnoremap <leader>u veU<esc>

"set leader
let mapleader = ","

"set local leader
let maplocalleader = "\\"

"easily edit vimrc 
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

"load vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

"Some useful abbreviations
iabbrev @@ mcorby313@gmail.com
iabbrev header #include <iostream><cr>using namespace std;<cr><cr>int main(){<cr><cr><cr>  return 0;<cr>}

"Put double quotes around a word
nnoremap <leader>" ve<esc>a"<esc>bi"<esc>lel

"Put single quotes around a word
nnoremap <leader>' ve<esc>a'<esc>bi'<esc>lel

"Put double quotes around selected text in visual mode
vnoremap <leader>" <Esc>a"<Esc>v'<<Esc>i"

"Make H go to beginning of line
nnoremap H 0

"Make L go to end of line
nnoremap L $

"make escaping insert mode faster
inoremap aa <esc>
vnoremap aa <esc>
"enforce above mapping by making exc do nothing
inoremap <esc> <nop>
inoremap OA <nop>
inoremap OB <nop>
inoremap OD <nop>
inoremap OC <nop>

"Comment out a line by typing \\c
autocmd FileType cpp,javascript,java,php nnoremap <buffer> <localleader>c 0i//<esc>
autocmd FileType python nnoremap <buffer> <localleader>c 0i#<esc>

"Snippets
augroup snippets
  autocmd! 
  autocmd FileType cpp,javascript,java,php :iabbrev <buffer> ifp if ()<left>

  autocmd FileType cpp,javascript,java,php,python :iabbrev <buffer> ret return

  autocmd FileType javascript :iabbrev <buffer> func function
augroup END
