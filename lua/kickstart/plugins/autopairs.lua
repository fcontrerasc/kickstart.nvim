-- autopairs
-- https://github.com/windwp/nvim-autopairs

local is_vscode = vim.g.vscode ~= nil

return {
  'windwp/nvim-autopairs',
  cond = not is_vscode,
  event = 'InsertEnter',
  opts = {},
}
