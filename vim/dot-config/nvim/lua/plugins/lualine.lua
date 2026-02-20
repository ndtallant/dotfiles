return {
  "nvim-lualine/lualine.nvim",
  config = function()
    vim.opt.showmode = false
    vim.cmd [[ set cmdheight=0 ]]
    require("lualine").setup {
      options = {
        icons_enabled = false,
        theme = "auto",
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "filename" },
        lualine_x = { "searchcount" },
        lualine_y = {},
        lualine_z = {
          {
            function()
              local row = vim.fn.line "."
              local col = vim.fn.col "."
              local location_text = string.format("row %d, col %d", row, col)
              return string.format("%15s", location_text)
            end,
          },
        },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },
    }
  end,
}
