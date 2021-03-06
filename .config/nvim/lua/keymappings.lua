local g = vim.g
local map = vim.api.nvim_set_keymap

g.mapleader = " "

-- force remaps
map('n', 'v', '<C-v>', {}) -- entering Visual Block

-- general navigation
map('i', 'jk', '<ESC>', {noremap = true})
map('v', '<Tab>', '<ESC>', {noremap = true})
map('n', 'H', '0', {noremap = true})
map('v', 'H', '0', {noremap = true})
map('n', 'L', 'A<ESC>', {noremap = true})
map('v', 'L', '$', {noremap = true})
map('n', 'vv', '0v$', {noremap = true})
map('n', '<C-A>', 'gg0vG$', {noremap = true})

-- split navigation
map('n', '¬', ':vsp<CR>', {noremap = true})
map('n', '∆', ':sp<CR>', {noremap = true})
map('n', '<C-L>', '<C-W><C-L>', {noremap = true})
map('n', '<C-H>', '<C-W><C-H>', {noremap = true})
map('n', '<C-J>', '<C-W><C-J>', {noremap = true})
map('n', '<C-K>', '<C-W><C-K>', {noremap = true})

-- inserting
map('n', '<C-s>', ':call ShojiToggle()<CR>', {noremap = true})
map('n', '-', 'ddp', {noremap = true})
map('n', '_', 'ddkP', {noremap = true})
map('n', '<leader>"', 'viw<ESC>a"<ESC>bi"<ESC>lel', {noremap = true})
map('n', '<leader>\'', 'viw<ESC>a\'<ESC>bi\'<ESC>lel', {noremap = true})
map('n', '<leader>o', 'o<ESC>', {noremap = true})
map('n', '<leader>O', 'O<ESC>', {noremap = true})
map('n', '<leader>p', ':lua require("funcs").copy_to_next_empty_line("down")<CR>', {noremap = true })
map('n', '<leader>P', ':lua require("funcs").copy_to_next_empty_line("up")<CR>', {noremap = true })
map('n', '<leader>j', ':lua require("funcs").go_to_next_empty_line("down")<CR>', {noremap = true })
map('n', '<leader>k', ':lua require("funcs").go_to_next_empty_line("up")<CR>', {noremap = true })
map('n', '<leader>p', ':lua require("funcs").is_function_def()<CR>', {noremap = true })

-- split resize
map('n', '<leader>+', ':vertical resize +5<CR>', {noremap = true})
map('n', '<leader>-', ':vertical resize -5<CR>', {noremap = true})

-- copilot overwrite
vim.cmd [[
imap <silent><script><expr> <leader><Tab> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true
]]

-- ale lint
map('n', '<leader>aj', ':ALENext<CR>', {noremap = true})
map('n', '<leader>ak', ':ALEPrevious<CR>', {noremap = true})
