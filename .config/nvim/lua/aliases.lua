local cmd = vim.cmd

-- Directory Aliases (starting with $)
cmd [[
  let $RTP=split(&runtimepath, ',')[0]
  let $DEV="~/Documents/Development"
  let $LQ="~/Documents/Development/LIQD"
  let $NVIM="~/.config/nvim"
  let $LUA="~/.config/nvim/lua"
]]

-- File Aliases (starting with .)
cmd [[
  let $z="$HOME/.zshrc"
  let $init="$HOME/.config/nvim/init.lua"
]]
