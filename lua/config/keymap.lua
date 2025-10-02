
vim.keymap.set(
  {"n", "i"}, -- string or table
  "<C-c>", -- string
  "<Esc>" -- string or function
)

vim.keymap.set(
  {"n"}, -- string or table
  "nl", -- string
  "o<Esc>" -- string or function
)

vim.keymap.set(
  {"n","t"}, -- string or table
  "<C-Up>", -- string
  function()
    vim.cmd('resize +1') 
  end -- string or function
)

vim.keymap.set(
  {"n","t"}, -- string or table
  "<C-Down>", -- string
  function()
    vim.cmd('resize -1') 
  end -- string or function
)

vim.keymap.set(
  {"n","t"}, -- string or table
  "<C-Right>", -- string
  function()
    vim.cmd('vertical resize +1') 
  end -- string or function
)

vim.keymap.set(
  {"n","t"}, -- string or table
  "<C-Left>", -- string
  function()
    vim.cmd('vertical resize -1') 
  end -- string or function
)
