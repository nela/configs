" Initialize basic settings
source $XDG_CONFIG_HOME/nvim/basic-settings.vim

" Set Vim Global python virtual enviornment
let g:python3_host_prog = '$XDG_DATA_HOME/virtualenvs/nelaenvs/py3nvim/bin/python'

" Install Vim-plug and related plugins if not installed
if empty(glob('$XDG_DATA_HOME/nvim/site/autoload/plug.vim'))
  silent !curl -fLo
  "${XDG_DATA_HOME}:-$HOME}"/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('$XDG_DATA_HOME/nvim/plugged')

" Plug 'neovim/nvim-lspconfig'
Plug 'tomasiser/vim-code-dark'
Plug 'itchyny/lightline.vim'
Plug 'lambdalisue/fern.vim'

" Snippets engine ultisnips and Snippets
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive' " Git in VIM
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'supercollider/scvim'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

" Modify * to also work with visual selections.
Plug 'nelstrom/vim-visual-star-search'

" fzf from brew installation
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'


Plug 'neovim/nvim-lspconfig'

" Plug 'ervandew/supertab'

" Plug 'davidgranstrom/scnvim', { 'do': {-> scnvim#install() } }
" Plug 'davidhalter/jedi-vim'
" Plug 'ycm-core/YouCompleteMe'

call plug#end()

" Initialize Plugin configurations
source $XDG_CONFIG_HOME/nvim/plugconfig/lightline.vim
source $XDG_CONFIG_HOME/nvim/plugconfig/fern.vim
source $XDG_CONFIG_HOME/nvim/plugconfig/ultisnips.vim
source $XDG_CONFIG_HOME/nvim/plugconfig/supertab.vim
source $XDG_CONFIG_HOME/nvim/plugconfig/autopairs.vim
source $XDG_CONFIG_HOME/nvim/plugconfig/rainbow_parantheses.vim
source $XDG_CONFIG_HOME/nvim/plugconfig/scvim.vim
source $XDG_CONFIG_HOME/nvim/plugconfig/fzf.vim
"source $XDG_CONFIG_HOME/nvim/plugconfig/ycm.vim

" Python config
source $XDG_CONFIG_HOME/nvim/python.vim



" Initialize basic autocommands
source $XDG_CONFIG_HOME/nvim/basic-autocommands.vim

" Initialize Key Mappings
source $XDG_CONFIG_HOME/nvim/keymappings.vim

" Initialize Color Settings
source $XDG_CONFIG_HOME/nvim/color-settings.vim
