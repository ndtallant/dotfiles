return {
  cmd = { "gopls" },
  -- Upstream includes gowork/gotmpl, but this config does not currently define
  -- those filetypes, so keep the list to known Go buffer types.
  filetypes = { "go", "gomod" },
  root_markers = { "go.work", "go.mod", ".git" },
}
