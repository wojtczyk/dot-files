" enable syntax highlighting
syntax on
" endable intelligent auto indentation by file type
filetype plugin indent on
" expand tabs to spaces
set expandtab
" space characters per tab key press
set tabstop=2
" space characters for indentation
set shiftwidth=2
" enable auto indent
set autoindent
" display hybrid line numbers
set number relativenumber
" incremental search
set incsearch
" highlight search
set hlsearch
" display cursor position
set ruler
" for vimwiki
set nocompatible
filetype plugin on

" use keypad keys as keypad keys
inoremap <Esc>Oq 1
inoremap <Esc>Or 2
inoremap <Esc>Os 3
inoremap <Esc>Ot 4
inoremap <Esc>Ou 5
inoremap <Esc>Ov 6
inoremap <Esc>Ow 7
inoremap <Esc>Ox 8
inoremap <Esc>Oy 9
inoremap <Esc>Op 0
inoremap <Esc>On .
inoremap <Esc>OQ /
inoremap <Esc>OR *
inoremap <Esc>Ol +
inoremap <Esc>OS -
inoremap <Esc>OM <Enter>

"====[ Make the 81st column stand out ]====================
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

"=====[ Highlight matches when jumping to next ]=============
"nnoremap <silent> n n:call HLNext(0.4)<cr> 
"nnoremap <silent> N N:call HLNext(0.4)<cr>

"=====[ Highlight the match in red ]=============
function! HLNext (blinktime)
  let [bufnum, lnum, col, off] = getpos('.')
  let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/)) 
  let target_pat = '\c\%#'.@/
  let ring = matchadd('WhiteOnRed', target_pat, 101)
  redraw
  exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
  call matchdelete(ring)
  redraw
endfunction

"show tabs, non-breaking spaces, end of line white spaces
exec "set listchars=tab:\uB7\uB7,trail:\uB7,nbsp:~" 
set list

" custom path for vimwiki
let g:vimwiki_list = [{'path':'~/Documents/vimwiki', 'path_html':'~/Documents/vimwiki_html'}]

