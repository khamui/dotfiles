local tsquery = require('vim.treesitter.query')

local function log(value)
  print(vim.inspect(value))
end

local function blah()
  print('random func')
end

local lang = 'lua'
local bufnr = vim.api.nvim_get_current_buf()
local parser = vim.treesitter.get_parser(bufnr, lang)
local trees = parser:parse()
local root = trees[1]:root()
-- log(root)

local query = vim.treesitter.parse_query(lang, [[
(local_function
  (identifier) @function-name)
]])

for id, node, metadata in query:iter_captures(root, bufnr, 2, 8) do
  local row_start, col_start = node:range()
  vim.api.nvim_win_set_cursor({0}, {row_start + 1, col_start})
end
