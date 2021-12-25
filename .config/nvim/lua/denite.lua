-- Using shorter variable names
local map = vim.api.nvim_set_keymap
local bmap = vim.api.nvim_buf_set_keymap 
local cmd = vim.cmd

-- Removed due to conversion to lua -> Wrap in try/catch to avoid errors on initial install before plugin is available
-- try
-- === Denite setup ==="<ESC>
-- Use ripgrep for searching current directory for files
-- By default, ripgrep will respect rules in .gitignore
--   --files: Print each file that would be searched (but don't search)
--   --glob:  Include or exclues files for searching that match the given glob
--            (aka ignore .git files)
cmd [[call denite#custom#var('file/rec', 'command', ['rg', '--files', '--glob', '!.git'])]]

-- Use ripgrep in place of "grep"
cmd [[call denite#custom#var('grep', 'command', ['rg'])]]

-- Custom options for ripgrep
--   --vimgrep:  Show results with every match on it's own line
--   --hidden:   Search hidden directories and files
--   --heading:  Show the file name above clusters of matches from each file
--   --S:        Search case insensitively if the pattern is all lowercase
cmd [[call denite#custom#var('grep', 'default_opts', ['--hidden', '--vimgrep', '--heading', '-S'])]]

-- Recommended defaults for ripgrep via Denite docs
cmd [[call denite#custom#var('grep', 'recursive_opts', [])]]
cmd [[call denite#custom#var('grep', 'pattern_opt', ['--regexp'])]]
cmd [[call denite#custom#var('grep', 'separator', ['--'])]]
cmd [[call denite#custom#var('grep', 'final_opts', [])]]

-- Remove date from buffer list
cmd [[call denite#custom#var('buffer', 'date_format', '')]]

-- Creating options table, naming indices one by one (improvment: construct table with names directly?)
-- Wrapping it in a function to be able to call inside of vim command (improvement: use lua variable without func).
function getOpts()
  local denite_options = {}
  denite_options['start_filter'] = 1
  denite_options['auto_resize'] = 1
  denite_options['source_names'] = 'short'
  denite_options['prompt'] = '∆ '
  denite_options['highlight_matched_char'] = 'QuickFixLine'
  denite_options['highlight_matched_range'] = 'Visual'
  denite_options['highlight_window_background'] = 'Visual'
  denite_options['highlight_filter_background'] = 'DiffAdd'
  denite_options['winrow'] = 1 
  denite_options['vertical_preview'] = 1 
  return denite_options
end  

-- Loop through denite options and enable them
function profile(opts)
  for k, v in pairs(opts) do
    vim.api.nvim_set_var('doptkey', k)
    vim.api.nvim_set_var('doptval', v)
    cmd [[call denite#custom#option('default', g:doptkey, g:doptval)]]
  end
end

-- calling lua func with lua table as parameters
cmd [[call v:lua.profile(v:lua.getOpts())]]

-- ----- denite key mappings -----
--   ;         - Browser currently open buffers
--   <leader>t - Browse list of files in current directory
--   <leader>g - Search current directory for occurences of given term and close window if no results
--   <leader>j - Search current directory for occurences of word under cursor
map('n', ';', ':Denite buffer<CR>', {})
map('n', '<leader>t', ':DeniteProjectDir file/rec<CR>', {})
map('n', '<leader>g', ':<C-u>Denite grep:. -no-empty<CR>', {noremap = true})
map('n', '<leader>f', ':<C-u>DeniteCursorWord grep:.<CR>', {noremap = true})

-- Define mappings while in 'filter' mode
--   <C-o>         - Switch to normal mode inside of search results
--   <Esc>         - Exit denite window in any mode
--   <CR>          - Open currently selected file in any mode
--   <C-t>         - Open currently selected file in a new tab
--   <C-v>         - Open currently selected file a vertical split
--   <C-h>         - Open currently selected file in a horizontal split
function denite_filter_my_settings()
  local opts = { noremap = true, silent = true, expr = true }
  bmap(0, 'i', 'jk', [[<Plug>(denite_filter_update)]], { silent = true })
  bmap(0, 'i', '<ESC>', [[denite#do_map('quit')]], opts)
  bmap(0, 'n', '<ESC>', [[denite#do_map('quit')]], opts)
  bmap(0, 'i', '<CR>', [[denite#do_map('do_action')]], opts)
  bmap(0, 'i', '¬', [[denite#do_map('do_action', 'vsplit')]], opts)
  bmap(0, 'i', '∆', [[denite#do_map('do_action', 'split')]], opts)
end

-- Calling lua function
cmd [[autocmd FileType denite-filter call v:lua.denite_filter_my_settings()]]

-- Define mappings while in denite window
--   <CR>        - Opens currently selected file
--   q or <Esc>  - Quit Denite window
--   d           - Delete currenly selected file
--   p           - Preview currently selected file
--   <C-o> or i  - Switch to insert mode inside of filter prompt
--   <C-t>       - Open currently selected file in a new tab
--   <C-v>       - Open currently selected file a vertical split
--   <C-h>       - Open currently selected file in a horizontal split
function denite_my_settings()
  local opts = { noremap=true, silent=true, expr=true }
  bmap(0, 'n', '<CR>', [[denite#do_map('do_action')]], opts)
  bmap(0, 'n', 'q', [[denite#do_map('quit')]], opts)
  bmap(0, 'n', '<ESC>', [[denite#do_map('quit')]], opts)
  bmap(0, 'n', 'd', [[denite#do_map('do_action', 'delete')]], opts)
  bmap(0, 'n', 'p', [[denite#do_map('do_action', 'preview')]], opts)
  bmap(0, 'n', 'i', [[denite#do_map('open_filter_buffer')]], opts)
  bmap(0, 'n', '<C-o>', [[denite#do_map('open_filter_buffer')]], opts)
  bmap(0, 'n', '<C-t>', [[denite#do_map('do_action', 'tabopen')]], opts)
  bmap(0, 'n', '¬', [[denite#do_map('do_action', 'vsplit')]], opts)
  bmap(0, 'n', '∆', [[denite#do_map('do_action', 'split')]], opts)
end

-- calling lua function
cmd [[autocmd FileType denite call v:lua.denite_my_settings()]]

