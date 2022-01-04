"----------------------map---------------------"

" file search
map <F3> :Files<CR> 
map <C-F3> :History<CR>
map <F4> :Rg<CR>

" nerdtree
map <silent> <C-e> :NERDTreeToggle<CR>

" floaterm
"let g:floaterm_keymap_new    = '<F8>'
"let g:floaterm_keymap_prev   = '<F9>'
"let g:floaterm_keymap_next   = '<F10>'
let g:floaterm_keymap_toggle = '<C-t>'

"------------------------------compile------------------------------------------"
" PYTHON	
"	autocmd FileType python nnoremap <buffer> <C-p> :update<bar>!python %<CR>
" RUBY
"	autocmd FileType ruby nnoremap <buffer> <C-r> :update<bar>!ruby %<CR>
" GO
"	autocmd FileType go nnoremap <buffer> <C-g> :update<bar>!go run %<CR>
" C++ compile
"	autocmd FileType cpp nnoremap <buffer> <C-m> :update<bar>!g++ % -o a<CR>
" C++ run
"	autocmd FileType cpp nnoremap <buffer> <C-S-m> :update<bar>!g++ % -o a && ./a<CR>
" C compile
"	autocmd FileType c nnoremap <buffer> <C-n> :update<bar>!gcc % -o a<CR>
" C run
"	autocmd FileType c nnoremap <buffer> <C-S-n> :update<bar>!gcc % -o a && ./a<CR>
" Rust
"	autocmd FileType rust nnoremap <buffer> <C-r> :update<bar>!rustc % -o a && ./a<CR>
" Dart
"
" Lua
"	autocmd FileType lua nnoremap <buffer> <C-l> :update<bar>!lua %<CR>
" Java
"
" Spring
"

map <C-r> :call CompileRunGcc()<CR>
func! CompileRunGcc()
exec "w"
if &filetype == 'c'
exec "!gcc % -o %<"
exec "!time ./%<"
elseif &filetype == 'cpp'
exec "!g++ % -o %<"
exec "!time ./%<"
elseif &filetype == 'java'
exec "!javac %"
exec "!time java -cp %:p:h %:t:r"
elseif &filetype == 'sh'
exec "!time bash %"
elseif &filetype == 'python'
exec "!time python2.7 %"
elseif &filetype == 'html'
exec "!firefox % &"
elseif &filetype == 'go'
exec "!go build %<"
exec "!time go run %"
elseif &filetype == 'mkd'
exec "!~/.vim/markdown.pl % > %.html &"
exec "!firefox %.html &"
endif
endfunc

"----------------------------------------------"
