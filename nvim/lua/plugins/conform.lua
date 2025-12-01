return {
  "stevearc/conform.nvim",
  opts = {
    format_on_save = {
      -- These options will be passed to conform.format()
      timeout_ms = 500,
      lsp_fallback = true,
    },
    formatters_by_ft = {
      lua = { "stylua" },
      go = { "goimports", "gofmt" },
      python = { "isort", "ruff" },
      rust = { "rustfmt" },
    },
  },
}
