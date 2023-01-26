local wk = require("which-key")

wk.register({
  f = {
    name = "file", -- optional group name
    f = { "Find File" },
    b = { "Find Buffers" },
    g = { "Find Git Files" }, -- just a label. don't create any mapping
    h = "Find Help Tags", -- same as above
    s = "Live Grep", -- same as above
    --["1"] = "which_key_ignore",  -- special label to hide it in the popup
   -- b = { function() print("bar") end, "Foobar" } -- you can also pass functions!
  },
  t = {
      f = "Terminal Float",
      v = "Terminal Vertical",
      h = "Terminal Horizontal",
      t = "Trouble Toggle",
      s = "Todo Telescope",
      r = "Todo Trouble"
  }
}, { prefix = "<leader>" })
