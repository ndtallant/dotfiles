vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", { clear = true }),
  callback = function(ev)
    local opts = { buffer = ev.buf }
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  end,
})

local config_dir = vim.fn.stdpath "config"
local server_configs = vim.fn.globpath(config_dir, "lsp/*.lua", false, true)

for _, path in ipairs(server_configs) do
  local server = vim.fn.fnamemodify(path, ":t:r")
  vim.lsp.enable(server)
end
