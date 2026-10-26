return {
  cmd = { "vue-language-server", "--stdio" },
  -- Upstream includes gowork/gotmpl, but this config does not currently define
  -- those filetypes, so keep the list to known Go buffer types.
  filetypes = { "vue" },
  root_markers = { ".git" },
}
