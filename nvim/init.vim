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
Plug 'kyazdani42/nvim-tree.lua'
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
Plug 'Valloric/ListToggle'

" Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'nelstrom/vim-visual-star-search'
Plug 'windwp/nvim-autopairs'

" Telescope things
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" fzf from brew installation
" Plug '/usr/local/opt/fzf'
" Plug 'junegunn/fzf.vim'

Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'mfussenegger/nvim-jdtls'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

Plug 'hrsh7th/nvim-compe'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'Seudev/vscode-java-snippets'

"Plug 'supercollider/scvim'
" Unused
Plug 'davidgranstrom/scnvim', { 'do': {-> scnvim#install() } }

call plug#end()

lua require '_compe'
lua require '_nvim-treesitter'
lua require '_nvim-autopairs'
lua require '_nvim-tree'
lua require 'lsp.lua'
lua require 'lsp.python'

source $XDG_CONFIG_HOME/nvim/plugconfig/lightline.vim
" source $XDG_CONFIG_HOME/nvim/plugconfig/scvim.vim
" source $XDG_CONFIG_HOME/nvim/plugconfig/fzf.vim

let g:nvcode_termcolors=256
" Set the color scheme
colorscheme nvcode
" set background=dark
source $XDG_CONFIG_HOME/nvim/transparent-bg.vim
