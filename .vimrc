""------------------------------- Installed Plugins and themes -------------------------------------
" coc-nvim

""----------------------------------- General settings -----------------------------------------
syntax on

set number
set wrap
"set expandtab
"set smarttab     "auto indent for certain code
set tabstop=4    "converts tab to 4 spaces
set shiftwidth=4 "go back tab space and auto indent
set autoindent
set showmatch    "show matching brackets
set t_Co=256
set laststatus=2 "status bar on 
set noshowmode

filetype plugin indent on
let mapleader = "," "setting leader key / it can be any key
let maplocalleader = "-" "setting leader key / it can be any key
colorscheme elflord "setting colorscheme

":echom (>^.^<)"

"buffer specifies the file in which it has been mentioned and it will only work in the file it was mentioned
":nnoremap          <leader>d dd
":nnoremap <buffer> <leader>x dd           

"clear the complete line and put i insert mode
nnoremap <leader>c ddO 
"move the line below
noremap <leader>- ddp
"move the line above
noremap <leader>_ dd2kp
"make the complete word in uppercase
inoremap <c-u> <esc>viwUwhi
nnoremap <c-u> viwUwh

"move between buffers
nnoremap <leader><tab> :b#<cr>
nnoremap <leader>1 :b1<cr>
nnoremap <leader>2 :b2<cr>
nnoremap <leader>3 :b3<cr>
nnoremap <leader>4 :b4<cr>
nnoremap <leader>5 :b5<cr>

"save file
nnoremap <leader>s :w<cr>:echo "file saved"<cr>

".vimrc edit easier
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>:echo "file sourced!!"<cr>

"abbreviations
iabbrev adn and
iabbrev wath what
iabbrev @@ akshdeepsingh53@gmail.com
iabbrev ( ()<left><space><left>
iabbrev { {}<left><space><left>
iabbrev [ []<left><space><left>

"put double and single quotes around the word
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

"move to the front and end of the line
nnoremap H 0
nnoremap L $

"escape insert or  visual mode
inoremap jk <esc>

"disable escape key to learn the new map
inoremap <esc> <nop>

"disable arrow keys
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

"edit between parentheses, using dp will delete everthing in between the
"parentheses and leave you in edit mode
onoremap p i(
"onoremap H

""----------------------------------- NERDTree settings -----------------------------------------
"nnoremap <leader>n :NERDTreeFocus<CR>
"noremap <C-n> :NERDTree<CR>
"noremap <C-t> :NERDTreeToggle<CR>
"noremap <C-f> :NERDTreeFind<CR>

""----------------------------------- status bar settings ------------------------------------
let g:currentmode={
	\ 'n' : 'NORMAL ',
	\ 'v' : 'VISUAL ',
	\ 'V' : 'V_LINE ',
	\ '\' : 'V_BLOCK',
	\ 'i' : 'INSERT ',
	\ 'R' : 'R ',
	\ 'Rv' : 'V-REPLACE ',
	\ 'c' : 'COMMAND ',
	\}

set statusline=
set statusline+=%#Icon#
set statusline+=\ >>
set statusline+=\ %#NormalC#%{(mode()=='n')?'\ NORMAL\ ':''}
set statusline+=%#InsertC#%{(mode()=='i')?'\ INSERT\ ':''}
set statusline+=%#VisualC#%{(mode()=='v')?'\ VISUAL\ ':''}
set statusline+=%#Filename#
set statusline+=\ %f
set statusline+=%#ReadOnly#
set statusline+=\ %r
set statusline+=%m
set statusline+=%=
set statusline+=%#Fileformat#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\ [%{&fileformat}\]
set statusline+=%#Position#
set statusline+=\ [%l/%L]

""----------------------------------- Autocommand settings -----------------------------------------
augroup filetype_cpp
	autocmd!
	" Compile raylib c++ files
	autocmd filetype cpp nnoremap <F4> :w <bar> exec '!g++ '.shellescape('%').' -lraylib -lGL -lm -lpthread -ldl -lrt -lX11 -o'.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
	" comment out line in cpp files
	autocmd FileType cpp nnoremap <buffer> <localleader>c I//<esc>
	autocmd FileType cpp nnoremap <buffer> <localleader>C I<esc>xx
	autocmd FileType cpp :iabbrev <buffer> iff if()<left>
augroup END

augroup filetype_python
	autocmd!
	autocmd FileType python nnoremap <buffer> <F4> :w <bar> exec '!python '.shellescape('%')<CR>
	" comment out line in python files
	autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
	autocmd FileType python nnoremap <buffer> <localleader>C I<esc>x
augroup END

augroup filetype_html
	autocmd!
	" disable wrap in html files
	autocmd BufNewfile, BufRead *.html setlocal nowrap
augroup END





""---------------------------------------- coc-settings ----------------------------------------
" May need for Vim (not Neovim) since coc.nvim calculates byte offset by count
" utf-8 byte sequence
set encoding=utf-8
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Show all diagnostics
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>

" GoTo code navigation
nmap <silent><nowait> gd <Plug>(coc-definition)
nmap <silent><nowait> gy <Plug>(coc-type-definition)
nmap <silent><nowait> gi <Plug>(coc-implementation)
nmap <silent><nowait> gr <Plug>(coc-references)

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent><nowait> [g <Plug>(coc-diagnostic-prev)
nmap <silent><nowait> ]g <Plug>(coc-diagnostic-next)

