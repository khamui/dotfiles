local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
Plug 'nvim-treesitter/playground'
-- === Editing cmd [[Plugins === --
-- Trailing whitespace highlighting & automatic fixing
-- cmd [[Plug 'ntpeters/vim-better-whitespace'
--
-- automcompletion with lsp
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'saadparwaiz1/cmp_luasnip'
-- snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'
-- lsp
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

-- auto-close plugin
-- cmd [[Plug 'rstacruz/vim-closer'

-- Improved motion in Vim
-- cmd [[Plug 'easymotion/vim-easymotion'

-- Intellisense Engine
-- Plug ('neoclide/coc.nvim', {['branch'] = 'release'})

-- LSP
Plug 'dense-analysis/ale'

-- better JSX support indentation and highlighting
Plug 'chemzqm/vim-jsx-improve'

-- Denite - Fuzzy finding, buffer management
Plug('Shougo/denite.nvim', {['do'] = ':UpdateRemotePlugins'})

-- Moving code and duplicating
-- Plug 'booperlv/nvim-gomove'
-- Plug('~/Documents/Development/nvim/nvim-gomove', {branch = 'khamui-patch'})

-- Snippet support
-- cmd [[Plug 'Shougo/neosnippet'
-- cmd [[Plug 'Shougo/neosnippet-snippets'

-- Print function signatures in echo area
-- cmd [[Plug 'Shougo/echodoc.vim'

-- === Git cmd [[Plugins === --
-- Enable git changes to be shown in sign column
-- cmd [[Plug 'mhinz/vim-signify'
-- cmd [[Plug 'tpope/vim-fugitive'

-- === Javascript cmd [[Plugins === --
-- Typescript syntax highlighting
-- cmd [[Plug 'HerringtonDarkholme/yats.vim'

-- ReactJS JSX syntax highlighting
-- Plug 'mxw/vim-jsx'

-- Generate JSDoc commands based on function signature
-- cmd [[Plug 'heavenshell/vim-jsdoc'

-- === Syntax Highlighting === --

-- Syntax highlighting for nginx
-- cmd [[Plug 'chr4/nginx.vim'

-- Syntax highlighting for javascript libraries
-- cmd [[Plug 'othree/javascript-libraries-syntax.vim'

-- Improved syntax highlighting and indentation
-- Plug 'othree/yajs.vim'

-- === UI === --
-- File explorer
-- cmd [[Plug 'scrooloose/nerdtree'

-- Colorscheme
-- cmd [[Plug 'mhartington/oceanic-next'
Plug 'haystackandroid/shoji'
-- Plug 'cocopon/iceberg.vim'
-- Plug 'owickstrom/vim-colors-paramount'
Plug 'aonemd/quietlight.vim'
Plug('sonph/onehalf', {['rtp'] = 'vim/'})

-- Customized vim status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

-- Icons
-- cmd [[Plug 'ryanoasis/vim-devicons'
-- cmd [[Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
--
Plug 'github/copilot.vim'

-- Initialize plugin system
vim.call ('plug#end')
