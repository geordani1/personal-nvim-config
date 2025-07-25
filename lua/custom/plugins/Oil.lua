return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
    view_options = {
      show_hidden = true,
    },
    keymaps = {
      ['l'] = 'actions.select', -- Open file/folder
      ['h'] = 'actions.parent', -- Go to parent folder
      ['<CR>'] = 'actions.select', -- Enter also opens
      ['q'] = 'actions.close', -- Close Oil
    },
  },
  -- Global keymap to open Oil with \
  keys = {
    { '\\', '<cmd>Oil<CR>', desc = 'Open Oil File Explorer' },
    { '<leader>o', '<cmd>Oil<CR>', desc = 'Open Oil File Explorer' },
  },
  -- Optional dependencies
  dependencies = { { 'echasnovski/mini.icons', opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
}

