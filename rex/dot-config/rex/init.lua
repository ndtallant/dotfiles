-- Mirrors tmux/dot-tmux.conf: ctrl+a enters a one-shot "prefix" mode,
-- and the next key runs the binding below it.
rex.mode("prefix", { exclusive = true })
rex.bind("ctrl+a", "client.mode.enter", { name = "prefix", once = true })
rex.bind("prefix/a", "pane.send_key", { key = "ctrl+a" })
rex.bind("prefix/ctrl+a", "pane.send_key", { key = "ctrl+a" })
rex.bind("prefix/escape", "client.mode.exit")

rex.bind("prefix/h", "pane.focus.left")
rex.bind("prefix/j", "pane.focus.down")
rex.bind("prefix/k", "pane.focus.up")
rex.bind("prefix/l", "pane.focus.right")

-- amount is a percentage of the split, not cells like tmux.
rex.bind("prefix/shift+[Period]", "pane.resize", { direction = "right", amount = 10 })
rex.bind("prefix/shift+[Comma]", "pane.resize", { direction = "left", amount = 10 })
rex.bind("prefix/[Minus]", "pane.resize", { direction = "down", amount = 10 })
rex.bind("prefix/shift+[Equal]", "pane.resize", { direction = "up", amount = 10 })

rex.bind("prefix/shift+[Quote]", "pane.split.down")
rex.bind("prefix/space", "pane.split.down")
rex.bind("prefix/enter", "pane.split.right")

rex.bind("prefix/r", "client.config.reload")
rex.bind("prefix/s", "session.switch")

-- tmux defaults the tmux config relies on implicitly.
rex.bind("prefix/c", "client.tab.new")
rex.bind("prefix/n", "client.tab.next")
rex.bind("prefix/p", "client.tab.previous")
rex.bind("prefix/[Comma]", "client.tab.rename")
rex.bind("prefix/shift+[Digit4]", "session.rename")
rex.bind("prefix/x", "pane.close")
rex.bind("prefix/z", "pane.zoom")
rex.bind("prefix/o", "pane.focus_next")
for i = 1, 9 do
  rex.bind("prefix/" .. i, "client.tab.goto", { index = i })
end
