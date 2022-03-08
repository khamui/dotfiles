-- 
-- switch on global settings
vim.cmd [[filetype plugin on]]
vim.cmd [[let g:ale_fix_on_save = 0]]

-- Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
-- Plug 'nvim-treesitter/playground'
-- setting up treesitter and treesitter playground config
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
  highlight = { enable = false }
}
