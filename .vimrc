set number
set relativenumber

set splitright "split windows will open on the right panel

"auto wraping the text that extends beyond the screen length
set wrap

" show status bar
set hlsearch

set laststatus=2

"finds or autocompletes the file name in find command
set path+=**

"Display all matching files when we tab complete
set wildmenu

" :ls will give me all the files saved in buffer by vim
" if i had a file already open and closed it i can find and open it by using :b 'unique text in file' OR by pressing tab after :b to find it 

" to change the color scheme of vim
colorscheme elflord

syntax on

filetype plugin on
"filetype plugin indent off

" Recompile suckless program automatically
	autocmd BufWritePost blocks.h,config.h,config.def.h !sudo make install

" %:p is current buffer file name, :r means without file extension
" Compile cpp code in same window
	autocmd filetype cpp nnoremap <F9> :w<bar>bot term ++shell g++ %:p -o %:p:r && %:p:r<CR>
"  SFML game - Compile cpp code in same window
	autocmd filetype cpp nnoremap <F8> :w<bar>bot term ++shell g++ %:p -o  %:p:r -lsfml-graphics -lsfml-window -lsfml-system && %:p:r<CR>

"  GLUT game - Compile cpp code in same window
	autocmd filetype cpp nnoremap <F7> :w<bar>bot term ++shell g++ %:p -I/home/aksh/Documents/chemverse/ogldev-master/Include/assimp5/assimp -lGLEW -lGLU -lGL -lglut -o  %:p:r && %:p:r<CR>



" Compile cpp code in same window
"	autocmd filetype cpp nnoremap <F8> :w<bar>bot term ++shell g++ -c ~/Documents/cpp_game/SDL2_platformer/src/*.cpp -std=c++14 -m64 -g -Wall -I ~/Documents/cpp_game/SDL2_platformer/include && g++ ~/Documents/cpp_game/SDL2_platformer/src/*.o -o ~/Documents/cpp_game/SDL2_platformer/bin/debug/main -lSDL2 -lSDL2_image && ~/Documents/cpp_game/SDL2_platformer/bin/debug/main<CR>

"inoremap ( ()<Left>
"inoremap [ []<Left>
"inoremap { {}<Left>
"inoremap <Left>

" File explorer Tree 
inoremap <c-b> <Esc>:Lex<cr>:vertical resize 30<cr>
nnoremap <c-b> <Esc>:Lex<cr>:vertical resize 30<cr>


"C++
set tabstop=4
set shiftwidth=4
set softtabstop=4
