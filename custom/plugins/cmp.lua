local present, cmp = pcall(require, "cmp")

if not present then
  return
end

local M = {}

M.mapping = {
  ["<C-f>"] = cmp.mapping.confirm {
    behavior = cmp.ConfirmBehavior.Replace,
    select = true,
  },
}

return M
