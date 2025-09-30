
function new_lazy_plugin(args)
  local config_home = vim.fn.stdpath("config")
  local lazy_path = config_home .. "/lua/plugins/" .. args.args .. ".lua"

  print("Creating new lazy plugin at: " .. lazy_path)

  vim.cmd("e " .. lazy_path)
end

vim.api.nvim_create_user_command(
  "Evimplug",
  new_lazy_plugin,
  { nargs = 1 }
)

vim.api.nvim_create_user_command(
  "ReloadConfig",
  function() vim.cmd("source $MYVIMRC") end,
  {}
)

vim.api.nvim_create_user_command(
  "Dashboard",
  function()
    vim.cmd("only")
    Snacks.dashboard()
    print("Welcome back, " .. vim.fn.getenv("USER") .. "!")
  end,
  {}
)

vim.api.nvim_create_user_command(
  "Lazygit",
  function() Snacks.lazygit() end,
  {}
)

vim.api.nvim_create_user_command(
  "Fzg",
  function() Snacks.picker.grep() end,
  {}
)



vim.api.nvim_create_user_command(
  "Fzf",
  function() Snacks.picker.files() end,
  {}
)

vim.api.nvim_create_user_command(
  "Fz",
  function() Snacks.picker() end,
  {}
)

vim.api.nvim_create_user_command(
  "Fzb",
  function() Snacks.picker.buffers() end,
  {}
)

vim.api.nvim_create_user_command(
  "FzfConfig",
  function() Snacks.picker.files({
    cwd = vim.fn.stdpath("config"),
  }) end,
  {}
)
