local cmp = require "cmp"

local M = {}

M.mapping = {
  ["<C-f>"] = cmp.mapping.confirm {
    behavior = cmp.ConfirmBehavior.Replace,
    select = true,
  },
}

return M
