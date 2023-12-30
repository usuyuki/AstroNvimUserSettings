-- customize mason plugins
-- 複数ファイルにすると読めなくなるので1ファイルで
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      -- (2) LSP
      ensure_installed = {
        -- php
        "intelephense",
        -- go
        "gopls",
        -- c
        "clangd",
        -- tex
        -- ltex-lsもあるが、texlabのほうが更新多めでrust製なのでtexlab採用。とはいえltex-lsもkotilin製で気になる
        "texlab",
        -- markdown 色々LSPはあるが一番更新が盛んなものを使用
        "marksman",
        -- rust
        "rust_analyzer",
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      -- (4) Linter (5) Formatter
      ensure_installed = {
        "prettier",
        -- php
        "php-cs-fixer",
        "phpstan",
        -- go
        "staticcheck",
        -- c
        "cpplint",
        "clang-format",
        -- tex
        "vale",
        "latexindent",
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      ensure_installed = { "php" },
    },
  },
}
