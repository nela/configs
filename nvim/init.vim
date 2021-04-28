" Initialize basic settings
source $XDG_CONFIG_HOME/nvim/settings.vim

" Initialize basic autocommands
source $XDG_CONFIG_HOME/nvim/autocommands.vim

" Initialize Key Mappings
source $XDG_CONFIG_HOME/nvim/keybindings.vim

" Set Vim Global python virtual enviornment
let g:python3_host_prog = "$XDG_DATA_HOME/virtualenvs/nelaenvs/py3nvim/bin/python"

" Install Vim-plug and related plugins if not installed
if empty(glob('$XDG_DATA_HOME/nvim/site/autoload/plug.vim'))
  silent !curl -fLo
  "${XDG_DATA_HOME}:-$HOME}"/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('$XDG_DATA_HOME/nvim/plugged')

Plug 'lambdalisue/fern.vim'

" Color scheme
Plug 'christianchiarulli/nvcode-color-schemes.vim'
Plug 'tomasiser/vim-code-dark'
Plug 'MordechaiHadad/nvim-papadark'
Plug 'rktjmp/lush.nvim'

Plug 'itchyny/lightline.vim'

" Basics
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'

" Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'nelstrom/vim-visual-star-search'
Plug 'windwp/nvim-autopairs'

" fzf from brew installation
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'

Plug 'neovim/nvim-lspconfig'
Plug 'mfussenegger/nvim-jdtls'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'hrsh7th/nvim-compe'
Plug 'hrsh7th/vim-vsnip'
Plug 'supercollider/scvim'

" Unused
" Plug 'davidgranstrom/scnvim', { 'do': {-> scnvim#install() } }
call plug#end()

lua require('_compe')
lua require('_nvim-treesitter')
lua require('_nvim-autopairs')
lua require ('lsp.lua')
" lua require('plugin.compe')
" lua require('plugin.nvim-treesitter')
" lua require('plugin.nvim-autopairs')


source $XDG_CONFIG_HOME/nvim/plugconfig/lightline.vim
source $XDG_CONFIG_HOME/nvim/plugconfig/fern.vim

source $XDG_CONFIG_HOME/nvim/plugconfig/scvim.vim
source $XDG_CONFIG_HOME/nvim/plugconfig/fzf.vim


" Initialize Color Settings

source $XDG_CONFIG_HOME/nvim/transparent-bg.vim

let g:nvcode_termcolors=256

" Set the color scheme
colorscheme nvim-papadark

" Set the color scheme to dark.
set background=dark
