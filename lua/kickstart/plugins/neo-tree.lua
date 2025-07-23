return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    window = {
      position = 'left',
      width = 30,
    },
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
          ['h'] = 'close_node',
          ['l'] = 'open',
        },
      },
    },
  },
}
