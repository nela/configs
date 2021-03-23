augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END

" Auto-resize splits when Vim gets resized.
autocmd VimResized * wincmd =

" Vertically center document when entering insert mode
autocmd InsertEnter * norm zz

" Remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" Update a buffer's contents on focus if it changed outside of Vim.
au FocusGained,BufEnter * :checktime

" Unset paste on InsertLeave.
autocmd InsertLeave * silent! set nopaste

" Make sure all types of requirements.txt files get syntax highlighting.
autocmd BufNewFile,BufRead requirements*.txt set syntax=python

" Ensure tabs don't get converted to spaces in Makefiles.
autocmd FileType make setlocal noexpandtab

" Fix tex file type set
autocmd BufRead,BufNewFile *.tex set filetype=tex
autocmd FileType tex,latex markdown setlocal spell spellang=en_gb

" Only show the cursor line in the active buffer.
augroup CursorLine
    au!
    au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
augroup END

" Load Rainbow Parantheses
au VimEnter * RainbowParentheses!!

" Python Compile
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python' shellescape(@%, 1)<CR>

" Java
autocmd BufRead,BufNewFile *.java set filetype=java
autocmd FileType java set tabstop=4 shiftwidth=4 softtabstop=4

autocmd FileType java map <buffer> <F8> :w<CR>:exec '!javac' shellescape(@%, 1)<CR>
autocmd FileType java imap <buffer> <F8> <esc>:w<CR>:exec '!javac' shellescape(@%, 1)<CR>

autocmd FileType java map <buffer> <F9> :w<CR>:exec '!java' shellescape(fnamemodify(@%, ':r'), 1)<CR>
autocmd FileType java map <buffer> <F9> <esc>:w<CR>:exec '!java' shellescape(fnamemodify(@%, ':r'), 1)<CR>
