
vim.g.mapleader = ","  -- Make sure to set `mapleader` before lazy.nvim startup
vim.g.maplocalleader = ","

vim.keymap.set(
  "n", 
  "<leader><space>", 
  function() vim.cmd('echo "Hello World!"') end
)

vim.keymap.set(
    {"n", "i"}, -- string or table
    "<C-c>", -- string
    "<ESC>"  -- string or function
)
