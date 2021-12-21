local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

-- === Editing cmd [[Plugins === --
-- Trailing whitespace highlighting & automatic fixing
-- cmd [[Plug 'ntpeters/vim-better-whitespace'

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
Plug 'mxw/vim-jsx'

-- Generate JSDoc commands based on function signature
-- cmd [[Plug 'heavenshell/vim-jsdoc'

-- === Syntax Highlighting === --

-- Syntax highlighting for nginx
-- cmd [[Plug 'chr4/nginx.vim'

-- Syntax highlighting for javascript libraries
-- cmd [[Plug 'othree/javascript-libraries-syntax.vim'

-- Improved syntax highlighting and indentation
Plug 'othree/yajs.vim'

-- === UI === --
-- File explorer
-- cmd [[Plug 'scrooloose/nerdtree'

-- Colorscheme
-- cmd [[Plug 'mhartington/oceanic-next'
Plug 'haystackandroid/shoji'
Plug 'cocopon/iceberg.vim'
Plug 'owickstrom/vim-colors-paramount'
Plug 'aonemd/quietlight.vim'

-- Customized vim status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

-- Icons
-- cmd [[Plug 'ryanoasis/vim-devicons'
-- cmd [[Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

-- Initialize plugin system
vim.call ('plug#end')

-- set global ale linter for javascript 
vim.cmd [[let g:ale_linters = {'javascript': ['eslint']}]]
