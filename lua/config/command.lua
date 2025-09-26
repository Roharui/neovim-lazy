
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

