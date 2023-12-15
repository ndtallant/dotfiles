return {
	{
		"neovim/nvim-lspconfig",
		ft = { "go" },
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.gopls.setup({})
		end,
	},
}
