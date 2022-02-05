local tsquery = require 'vim.treesitter.query'
local ts_utils = require 'nvim-treesitter.ts_utils'

A = {}

local function log(value)
  print(vim.inspect(value))
end

local function blah()
  print('random func')
end

function A.find_all_functions()
  local lang = 'lua'
  local bufnr = vim.api.nvim_get_current_buf()
  local parser = vim.treesitter.get_parser(bufnr, lang)
  local trees = parser:parse()
  local root = trees[1]:root()

  local query = vim.treesitter.parse_query(lang, [[
(function_declaration
  (identifier) @function)
(function_declaration
  (dot_index_expression
    (identifier) @function-expr ))]])

  A.all_funcs = {}

  local idx = 1
  for id, node, metadata in query:iter_captures(root, bufnr) do
    -- local row_start, col_start = node:range()
    A.all_funcs[idx] = ts_utils.get_node_text(node, bufnr)
    print(node:type())
    --vim.api.nvim_win_set_cursor({0}, {row_start + 1, col_start})
    idx = idx + 1
  end
  log(A.all_funcs)
end

return A
