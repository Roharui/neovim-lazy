-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.relativenumber = false
vim.opt.mouse = ""

vim.g.clipboard = {
  name = "wslclipboard",
  copy = {
    ["+"] = "clip.exe",
    ["*"] = "clip.exe",
  },
  paste = {
    ["+"] = "powershell.exe -command 'Get-Clipboard' | sed 's/\r\n//g'",
    ["*"] = "powershell.exe -command 'Get-Clipboard' | sed 's/\r\n//g'",
  },
  cache_enabled = 0,
}
