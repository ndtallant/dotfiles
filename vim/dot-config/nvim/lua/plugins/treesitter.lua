-- Highlight, edit, and navigate code
-- Additional nvim-treesitter modules:
-- Incremental selection:
--      `:help nvim-treesitter-incremental-selection-mod`
-- Show your current context:
--      https://github.com/nvim-treesitter/nvim-treesitter-context
-- Treesitter + textobjects:
--      https://github.com/nvim-treesitter/nvim-treesitter-textobjects
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "bash",
      "c",
      "html",
      "lua",
      "luadoc",
      "markdown",
      "python",
      "sql",
      "vim",
      "vimdoc",
    },
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    indent = { enable = true },
  },
  config = function(_, opts)
    -- [[ Configure Treesitter ]] See `:help nvim-treesitter`

    ---@diagnostic disable-next-line: missing-fields
    require("nvim-treesitter.configs").setup(opts)
  end,
}
