-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      -- ltex-lsもあるが、texlabのほうが更新多めでrust製なのでtexlab採用。とはいえltex-lsもkotilin製で気になる
      ensure_installed = { "texlab" },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = { "vale","latexindent" },
    },
  },
}
