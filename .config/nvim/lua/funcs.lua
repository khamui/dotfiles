local function get_curr_line(curr_pos)
  return pcall(vim.api.nvim_buf_get_lines, 0, curr_pos - 1, curr_pos, false)
end

local function get_next_pos(curr_pos, direction)
  if direction == 'down' then
    return curr_pos + 1
  else
    return curr_pos - 1
  end
end

local function paste_from_last_register()
  -- local register0 = vim.fn.getreg('"0')
  -- print(register0)
  vim.cmd[[normal p]]
  vim.cmd[[normal o]]
  vim.cmd[[normal jk]]
end


local function get_next_empty_line(prev_pos, curr_pos, direction)
  local ok, retval = get_curr_line(curr_pos)
  if ok then
    local curr_line = retval[1]
    -- is empty line and not starting from empty line
    -- then set cursor, otherwise recursively search for
    -- next empty line
    if curr_line == '' and prev_pos ~= nil then
      vim.api.nvim_win_set_cursor(0, { curr_pos, 0 })
      paste_from_last_register()
    else
      prev_pos = curr_pos
      curr_pos = get_next_pos(curr_pos, direction)
      get_next_empty_line(prev_pos, curr_pos, direction)
    end
  else
    print('No new line available anymore (EOF?)')
  end
end

function _G.next_empty_line(direction)
  local curr_pos, _ = unpack(vim.api.nvim_win_get_cursor(0))
  local prev_pos = nil
  get_next_empty_line(prev_pos, curr_pos, direction)
end
