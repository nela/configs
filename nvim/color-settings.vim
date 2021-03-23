" Enable syntax highlighting.
syntax on
" Set the color scheme
colorscheme codedark

" Set the color scheme to dark.
set background=dark

" Transparent Background and line Column
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
autocmd vimenter * hi EndOfBuffer guibg=NONE ctermbg=NONE
highlight clear LineNr
highlight clear SignColumn

" Enable 24-bit true colors if your terminal supports it.
" https://github.com/vim/vim/issues/993#issuecomment-
if (has("termguicolors"))
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

  set termguicolors
endif
