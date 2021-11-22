-- vim.cmd('source ~/.config/nvim/kha.plugins')
-- vim.cmd('source ~/.config/nvim/kha.nvim')
require('plugins')
require('appearance')
require('aliases')
require('keymappings')
require('denite')

-- vim.cmd [[let g:ale_linters = {'javascript': ['eslint']}]]
vim.cmd [[filetype plugin on]]
