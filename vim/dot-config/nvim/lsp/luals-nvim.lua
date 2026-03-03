-- This starts a Lua LSP with Neovim's vim API when editing configs <3
return {
  cmd = { "lua-language-server" },
  filetypes = { "lua" },
  root_markers = {
    vim.fn.stdpath "config" .. "init.lua",
  },
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT",
        path = { "lua/?.lua", "lua/?/init.lua" },
      },
      diagnostics = {
        globals = { "vim" },
      },
      telemetry = {
        enable = false,
      },
      workspace = {
        checkThirdParty = false,
        library = {
          vim.env.VIMRUNTIME,
        },
      },
    },
  },
}
