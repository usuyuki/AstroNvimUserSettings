return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- ■カラースキーマ
  -- { import = "astrocommunity.colorscheme.kanagawa", enabled = true },
  { import = "astrocommunity.colorscheme.everforest", enabled = true },

  -- ■言語パック系
  -- https://github.com/AstroNvim/astrocommunity/tree/main/lua/astrocommunity/pack
  -- { import = "astrocommunity.pack.php" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.svelte" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.astro" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.astro" },


  -- https://github.com/echasnovski/mini.surround
  -- ""みたいな囲みをいい感じにするやつ
  { import = "astrocommunity.motion.mini-surround" },

  -- https://github.com/wakatime/vim-wakatime
  -- 移動したときにインデントの範囲を表示してくれるやつ
  { import = "astrocommunity.media.vim-wakatime" },

  -- https://github.com/echasnovski/mini.animate
  -- 移動したときにインデントの範囲を表示してくれるやつ
  { import = "astrocommunity.scrolling.mini-animate" },

  -- https://neovimcraft.com/plugin/m4xshen/smartcolumn.nvim/index.html
  -- 長すぎると線出してくれるやつ
  { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
  {
    "m4xshen/smartcolumn.nvim",
    opts = {
      colorcolumn = "80",
      disabled_filetypes = { "help"},
      custom_colorcolumn = {},
      scope = "file",
    }
  },

  -- github copilot
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  { -- further customize the options set by the community
    "copilot.lua",
    opts = {
      suggestion = {
        keymap = {
          accept = "<C-l>",
          accept_word = false,
          accept_line = false,
          next = "<C-.>",
          prev = "<C-,>",
          dismiss = "<C/>",
        },
      },
    },
  },
}
