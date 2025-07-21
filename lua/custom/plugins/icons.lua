return {
  "nvim-tree/nvim-web-devicons",
  lazy = false,
  enabled = true, 
  config = function()
    require("nvim-web-devicons").setup({
      override = {},
      default = true,
    })
  end,
}