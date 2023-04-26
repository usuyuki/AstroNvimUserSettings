return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
  -- https://github.com/samodostal/image.nvim
  -- AAで画像表示するプラグイン
  'samodostal/image.nvim',
  -- ↓依存
      'nvim-lua/plenary.nvim',
      'm00qek/baleia.nvim',
  },

}
