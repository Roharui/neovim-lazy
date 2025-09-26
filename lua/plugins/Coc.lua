return {
  'neoclide/coc.nvim',
  branch = 'release',
  event = 'VeryLazy',
  config = function()
    vim.cmd([[source ~/.config/nvim/lua/plugins/Coc.vim]])
  end,
  dependencies = { 'nvim-lua/plenary.nvim' },
}
