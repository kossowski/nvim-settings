local wk = require("which-key")
local mappings = {
  q = { ":q<cr>", "Quit" },
  Q = { ":qw<cr>", "Save & Quit" },
  w = { ":BufferClose<cr>", "Close Buffer" },
  E = { ":e ~/.config/nvim/init.lua<cr>", "Edit Config" },
  ff = { ":Telescope find_files<cr>", "Find File" },
  fr = { ":Telescope resume<cr>", "Open Telescope with last search string" },
  fg = { ":Telescope live_grep<cr>", "Search in Files" },
  fb = { ":Telescope buffers<cr>", "Find Buffer" }
}
local opts = {
  prefix = '<leader>'
}

wk.register(mappings, opts)
