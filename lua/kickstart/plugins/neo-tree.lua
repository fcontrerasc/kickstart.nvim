-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

local is_vscode = vim.g.vscode ~= nil

return {
  'nvim-neo-tree/neo-tree.nvim',
  cond = not is_vscode,
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    default_component_configs = {
      git_status = {
        symbols = {
          -- Change type
          added = '+',
          deleted = '⨯',
          modified = '',
          renamed = 'r',
          -- Status type
          untracked = '?',
          ignored = '*',
          unstaged = '~',
          staged = '✓',
          conflict = '!',
        },
      },
    },
    filesystem = {
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignored = false,
      },
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}
