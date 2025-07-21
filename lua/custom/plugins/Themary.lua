-- ~/.config/nvim/lua/plugins/themes.lua
return {
  -- Temas/colorschemes
  { 'folke/tokyonight.nvim', name = 'tokyonight', priority = 1000 },
  { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },
  { 'ellisonleao/gruvbox.nvim', name = 'gruvbox', priority = 1000 },
  { 'rebelot/kanagawa.nvim', name = 'kanagawa', priority = 1000 },
  { 'navarasu/onedark.nvim', name = 'onedark', priority = 1000 },
  { 'sainnhe/edge', name = 'edge', priority = 1000 },
  { 'sainnhe/everforest', name = 'everforest', priority = 1000 },
  { 'rose-pine/neovim', name = 'rose-pine', priority = 1000 },
  { 'projekt0n/github-nvim-theme', name = 'github_dark', priority = 1000 },
  { 'EdenEast/nightfox.nvim', name = 'nightfox', priority = 1000 },

  -- Themery: selector rápido
  {
    'zaldih/themery.nvim',
    cmd = 'Themery',
    keys = { { '<leader>Ts', '<cmd>Themery<CR>', desc = 'Select theme' } },
    dependencies = { 'nvim-telescope/telescope.nvim' },
    opts = {
      livePreview = true,
      themes = {
        { name = 'Tokyo Night Storm', colorscheme = 'tokyonight-storm' },
        { name = 'Tokyo Night Moon', colorscheme = 'tokyonight-moon' },
        { name = 'Catppuccin Latte', colorscheme = 'catppuccin-latte' },
        { name = 'Catppuccin Mocha', colorscheme = 'catppuccin-mocha' },
        { name = 'Gruvbox Dark', colorscheme = 'gruvbox' },
        { name = 'Kanagawa Dragon', colorscheme = 'kanagawa-dragon' },
        { name = 'One Dark', colorscheme = 'onedark' },
        { name = 'Edge Dark', colorscheme = 'edge' },
        { name = 'Everforest Dark', colorscheme = 'everforest' },
        { name = 'Rose Pine Moon', colorscheme = 'rose-pine-moon' },
      },
    },
  },
}
