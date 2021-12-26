local M = {}

function M.has_keyword(keyword, str)
  return str.match(str, keyword) and true or false
end

function M.has_substr(substr, str)
  return str.match(str, '['..substr..']') and true or false
end

return M
