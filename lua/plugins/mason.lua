return {
  "williamboman/mason.nvim",
  dependencies = { "williamboman/mason-lspconfig.nvim" },
  config = function()
    -- mason settings
    require("mason").setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_uninstalled = "✗",
          package_pending = "➜",
        },
      },
    })
    -- mason-lspconfig settings
    require("mason-lspconfig").setup({
      ensure_installed = {
        "vimls",
        "lua_ls",
        "html",
        "cssls",
        "tailwindcss",
        "ts_ls",
        "clangd",
        "csharp_ls",
        "jdtls",
        "kotlin_language_server",
        "pyright",
        "rust_analyzer",
        "zls",
        "gopls",
        -- "dartls", this is not required in here
        -- "emmet_ls",
        -- "svelte",
        -- "graphql",
        -- "prismals",
      },
      automatic_installation = false,
    })
  end,
}
