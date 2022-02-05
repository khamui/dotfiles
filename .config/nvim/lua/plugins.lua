local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
Plug 'nvim-treesitter/playground'
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

-- Moving code and duplicating
-- Plug 'booperlv/nvim-gomove'
Plug('~/Documents/Development/nvim/nvim-gomove', {branch = 'khamui-patch'})

Plug 'MunifTanjim/nui.nvim'

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

require("gomove").setup {
  -- whether or not to map default key bindings, (true/false)
  map_defaults = false,
  -- what method to use for reindenting, ("vim-move" / "simple" / ("none"/nil))
  reindent_mode = "vim-move",
  -- whether to not to move past line when moving blocks horizontally, (true/false)
  move_past_end_col = true,
  -- whether or not to ignore indent when duplicating lines horizontally, (true/false)
  ignore_indent_lh_dup = true,
}

require'nvim-treesitter.configs'.setup {
  incremental_selection = {
    enable = true,
    kecmaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
  playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false, -- Whether the query persists across vim sessions
    keybindings = {
      toggle_query_editor = 'o',
      toggle_hl_groups = 'i',
      toggle_injected_languages = 't',
      toggle_anonymous_nodes = 'a',
      toggle_language_display = 'I',
      focus_language = 'f',
      unfocus_language = 'F',
      update = 'R',
      goto_node = '<cr>',
      show_help = '?',
    },
  },
  query_linter = {
    enable = true,
    use_virtual_text = true,
    lint_events = { "BufWrite", "CursorHold" }
  },
  highlight = { enable = true }
}
