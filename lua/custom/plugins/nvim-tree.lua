return {
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      local config = require 'nvim-tree'
      config.setup {
        sort_by = 'case_sensitive',
        view = {
          width = 30,
          preserve_window_proportions = true,
          relativenumber = true,
        },
        renderer = {
          group_empty = true,
        },
        filters = {
          dotfiles = true,
        },
        actions = {
          open_file = {
            resize_window = false,
          },
        },
      }
      -- disable netrw at the very start of your init.lua
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1
      -- optionally enable 24-bit colour
      vim.opt.termguicolors = true
      vim.keymap.set('n', '<Space>ef', ':NvimTreeFindFile<CR>')
      vim.keymap.set('n', '<Space>eo', ':NvimTreeOpen<CR>')
      vim.keymap.set('n', '<Space>ec', ':NvimTreeClose<CR>')
    end,
  },
}
