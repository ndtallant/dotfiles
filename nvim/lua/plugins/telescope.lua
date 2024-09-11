return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.5",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    nmap("<leader>ff", "<cmd>Telescope git_files<cr>")
    nmap("<leader>lg", "<cmd>Telescope live_grep<cr>")
  end,
}
