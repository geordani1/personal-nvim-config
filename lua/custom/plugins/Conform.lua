return {
    -- Plugin para formateo automático

  "stevearc/conform.nvim",
  config = function()
    require("conform").setup({
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
      formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        lua = { "stylua" },
        python = { "black" },
        go = { "gofmt" },
      },
      formatters = {
        prettier = {
          prepend_args = { "--tab-width", "2", "--use-tabs", "false" },
        },
        black = {
          prepend_args = { "--line-length", "88" },
        },
      },
    })
  end,


}