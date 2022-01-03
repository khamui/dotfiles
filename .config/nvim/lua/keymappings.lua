local g = vim.g
local map = vim.api.nvim_set_keymap

g.mapleader = ","

-- force remaps
map('n', 'v', '<C-v>', {}) -- entering Visual Block 

-- general navigation
map('i', 'jk', '<ESC>', {noremap = true})
map('v', 'jk', '<ESC>', {noremap = true})
map('n', 'H', '0', {noremap = true})
map('v', 'H', '0', {noremap = true})
map('n', 'L', 'A<ESC>', {noremap = true})
map('v', 'L', 'A<ESC>', {noremap = true})
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

-- gomove mappings
-- map( "n", "<S-h>", "<Plug>GoNSMLeft", {} )
map( "n", "<S-j>", "<Plug>GoNSMDown", {} )
map( "n", "<S-k>", "<Plug>GoNSMUp", {} )
-- map( "n", "<S-l>", "<Plug>GoNSMRight", {} )

map( "x", "<S-h>", "<Plug>GoVSMLeft", {} )
map( "x", "<S-j>", "<Plug>GoVSMDown", {} )
map( "x", "<S-k>", "<Plug>GoVSMUp", {} )
map( "x", "<S-l>", "<Plug>GoVSMRight", {} )
map( "n", "<S-l>", "Pferd", {} )

--map( "n", "<C-h>", "<Plug>GoNSDLeft", {} )
--map( "n", "<C-j>", "<Plug>GoNSDDown", {} )
--map( "n", "<C-k>", "<Plug>GoNSDUp", {} )
--map( "n", "<C-l>", "<Plug>GoNSDRight", {} )
--
--map( "x", "<C-h>", "<Plug>GoVSDLeft", {} )
--map( "x", "<C-j>", "<Plug>GoVSDDown", {} )
--map( "x", "<C-k>", "<Plug>GoVSDUp", {} )
--map( "x", "<C-l>", "<Plug>GoVSDRight", {} )
