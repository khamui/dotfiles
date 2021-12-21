local cmd = vim.cmd
cmd "highlight LineNr ctermfg=253"
cmd "syntax enable"
cmd "colorscheme quietlight"

local map = vim.api.nvim_set_keymap
map('i', 'jk', '<ESC>', {noremap = true})

local opt = vim.o
opt.ruler = true
opt.backup = false
opt.writebackup = false
opt.swapfile = false
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.number = true
opt.relativenumber = true
opt.numberwidth = 4
opt.hls = false
opt.splitbelow = true
opt.splitright = true
opt.backspace = "indent,eol,start"
opt.colorcolumn="80"
opt.mouse="a"
