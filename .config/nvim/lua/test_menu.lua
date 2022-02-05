local Menu = require("nui.menu")
local event = require("nui.utils.autocmd").event

M = {}

M.menu = Menu({
  position = "20%",
  size = {
    width = 20,
    height = 2,
  },
  relative = "editor",
  border = {
    style = "single",
    text = {
      top = "Choose Something",
      top_align = "center",
    },
  },
  win_options = {
    winblend = 10,
    winhighlight = "Normal:Normal",
  },
}, {
  lines = {
    Menu.item("Item 1"),
    Menu.item("Item 2"),
    Menu.separator("Menu Group", {
      char = "-",
      text_align = "right",
    }),
    Menu.item("Item 3"),
  },
  max_width = 20,
  keymap = {
    focus_next = { "j", "<Down>", "<Tab>" },
    focus_prev = { "k", "<Up>", "<S-Tab>" },
    close = { "<Esc>", "<C-c>" },
    submit = { "<CR>", "<Space>" },
  },
  on_close = function()
    print("CLOSED")
  end,
  on_submit = function(item)
    print("SUBMITTED", vim.inspect(item))
  end,
})
-- close menu when cursor leaves buffer
--M.menu:on(event.BufLeave, M.menu.menu_props.on_close, { once = true })

return M
