local utils = require "astronvim.utils"
return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- Ensure that opts.ensure_installed exists and is a table or string "all".
      if not opts.ensure_installed then
        opts.ensure_installed = {}
      elseif opts.ensure_installed == "all" then
        return
      end
      -- Add the "python" and "toml" language to opts.ensure_installed.
      utils.list_insert_unique(opts.ensure_installed, "php")
    end,
  },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = function(_, opts)
      -- Ensure that opts.ensure_installed exists and is a table.
      if not opts.ensure_installed then opts.ensure_installed = {} end
      -- Add go lsps to opts.ensure_installed using vim.list_extend.
      utils.list_insert_unique(opts.ensure_installed, {"php-cs-fixer", "phpstan",})
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts)
      -- Ensure that opts.ensure_installed exists and is a table.
      if not opts.ensure_installed then opts.ensure_installed = {} end
      -- Add pyright lsp to opts.ensure_installed using table.insert.
      utils.list_insert_unique(opts.ensure_installed, {"intelephense"})
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = function(_, opts)
      -- Ensure that opts.ensure_installed exists and is a table.
      if not opts.ensure_installed then opts.ensure_installed = {} end
      -- Add to opts.ensure_installed using table.insert.
      utils.list_insert_unique(opts.ensure_installed, "php")
    end,
  },
}
