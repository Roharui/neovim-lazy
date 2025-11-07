return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      defaults = {
        -- LSP 클라이언트 기본 flags 설정
        flags = {
          debounce_text_changes = 100,
        },
      },
    },
  },
}
