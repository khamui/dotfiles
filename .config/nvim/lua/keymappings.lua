local g = vim.g
local map = vim.api.nvim_set_keymap

g.mapleader = ","

map('i', 'jk', '<ESC>', {noremap = true})
map('v', 'jk', '<ESC>', {noremap = true})
map('n', 'H', '0', {noremap = true})
map('v', 'H', '0', {noremap = true})
map('n', 'L', 'A', {noremap = true})

map('n', '¬', ':vsp<CR>', {noremap = true})
map('n', '∆', ':sp<CR>', {noremap = true})
map('n', '<C-L>', '<C-W><C-L>', {noremap = true})
map('n', '<C-H>', '<C-W><C-H>', {noremap = true})
map('n', '<C-J>', '<C-W><C-J>', {noremap = true})
map('n', '<C-K>', '<C-W><C-K>', {noremap = true})

map('n', '<C-s>', ':call ShojiToggle()<CR>', {noremap = true})
map('n', '-', 'ddp', {noremap = true})
map('n', '_', 'ddkP', {noremap = true})
map('n', '@', 'viw<ESC>a"<ESC>bi"<ESC>lel', {noremap = true})

