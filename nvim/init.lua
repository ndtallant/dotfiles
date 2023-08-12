vim.cmd("source ~/.vimrc")

-- Load lazy.nvim plugin manager, typically in .local/share/nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        config = function()
          vim.cmd([[colorscheme tokyonight]])
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            options = {
            icons_enabled = false,
            section_separators = "",
            component_separators = "",
            theme = "tokyonight"
        },
        tabline = {
            lualine_a = {
                { "buffers", symbols = { modified = "[+]", alternate_file = "" } }
            }
        }}
    },
    { "github/copilot.vim" },
    { "tpope/vim-commentary" },
})

