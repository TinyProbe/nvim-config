return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "antosha417/nvim-lsp-file-operations", config = true },
  },
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    vim.api.nvim_create_augroup("LSP", {})
    vim.api.nvim_create_autocmd({ "LspAttach" }, {
      group = "LSP",
      pattern = { "*" },
      callback = function(args)
        -- comments is default value
        vim.diagnostic.config({
          -- underline = true,
          virtual_text = { prefix = " ●" },
          -- virtual_lines = false,
          signs = false,
          -- signs = {
          --   text = {
          --     [vim.diagnostic.severity.ERROR] = " ",
          --     [vim.diagnostic.severity.WARN] = " ",
          --     [vim.diagnostic.severity.INFO] = " ",
          --     [vim.diagnostic.severity.HINT] = " ",
          --   },
          -- },
          -- float = false,
          -- update_in_insert = false,
          -- severity_sort = false,
          -- jump = vim.diagnostic.jump(),
        })
      end,
    })

    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    local on_attach = function(client, bufnr)
      local keymap = vim.keymap
      local opts = { noremap = true, silent = true, }
      opts.buffer = bufnr
      opts.desc = "Go to LSP references"
      keymap.set("n", "<leader>gr", "<cmd>Telescope lsp_references<cr>", opts)
      opts.desc = "Go to declaration"
      keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, opts)
      opts.desc = "Go to LSP definitions"
      keymap.set("n", "<leader>gd", "<cmd>Telescope lsp_definitions<cr>", opts)
      opts.desc = "Go to LSP implementations"
      keymap.set("n", "<leader>gi", "<cmd>Telescope lsp_implementations<cr>", opts)
      opts.desc = "Go to LSP type definitions"
      keymap.set("n", "<leader>gt", "<cmd>Telescope lsp_type_definitions<cr>", opts)
      opts.desc = "Go to available code actions"
      keymap.set({ "n", "v" }, "<leader>gc", vim.lsp.buf.code_action, opts)
      opts.desc = "Smart rename"
      keymap.set("n", "<leader>gR", vim.lsp.buf.rename, opts)
      opts.desc = "Go to buffer diagnostics"
      keymap.set("n", "<leader>db", "<cmd>Telescope diagnostics bufnr=0<cr>", opts)
      opts.desc = "Go to line diagnostics"
      keymap.set("n", "<leader>dl", vim.diagnostic.open_float, opts)
      opts.desc = "Go to previous diagnostic"
      keymap.set("n", "<leader>d[", vim.diagnostic.goto_prev, opts)
      opts.desc = "Go to next diagnostic"
      keymap.set("n", "<leader>d]", vim.diagnostic.goto_next, opts)
      opts.desc = "Go to documentation"
      keymap.set("n", "K", vim.lsp.buf.hover, opts)
      -- opts.desc = "Restart LSP"
      -- keymap.set("n", "<leader>rs", "<cmd>LspRestart<cr>", opts)
      -- client.server_capabilities.semanticTokensProvider = nil
    end

    vim.lsp.config("vimls", {
      capabilities = capabilities,
      on_attach = on_attach,
    })
    vim.lsp.config("lua_ls", {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        Lua = {
          diagnostics = { globals = { "vim" } },
          workspace = {
            library = {
              [vim.fn.expand("$VIMRUNTIME/lua")] = true,
              [vim.fn.stdpath("config") .. "/lua"] = true,
            },
          },
        },
      },
    })
    vim.lsp.config("html", {
      capabilities = capabilities,
      on_attach = on_attach,
    })
    vim.lsp.config("cssls", {
      capabilities = capabilities,
      on_attach = on_attach,
    })
    vim.lsp.config("tailwindcss", {
      capabilities = capabilities,
      on_attach = on_attach,
    })
    vim.lsp.config("ts_ls", {
      capabilities = capabilities,
      on_attach = on_attach,
    })
    vim.lsp.config("clangd", {
      capabilities = capabilities,
      on_attach = on_attach,
    })
    vim.lsp.config("csharp_ls", {
      capabilities = capabilities,
      on_attach = on_attach,
    })
    vim.lsp.config("jdtls", {
      capabilities = capabilities,
      on_attach = on_attach,
    })
    vim.lsp.config("kotlin_language_server", {
      capabilities = capabilities,
      on_attach = on_attach,
    })
    vim.lsp.config("pyright", {
      capabilities = capabilities,
      on_attach = on_attach,
    })
    vim.lsp.config("rust_analyzer", {
      capabilities = capabilities,
      on_attach = on_attach,
    })
    vim.lsp.config("zls", {
      capabilities = capabilities,
      on_attach = on_attach,
    })
    vim.lsp.config("gopls", {
      capabilities = capabilities,
      on_attach = on_attach,
    })
    vim.lsp.config("dartls", {
      capabilities = capabilities,
      on_attach = on_attach,
      filetypes = { "dart" },
      cmd = { "dart", "language-server", "--protocol=lsp" },
      init_options = {
        outline = true,
        closingLabels = true,
        flutterOutline = true,
        onlyAnalyzeProjectsWithOpenFiles = true,
        suggestFromUnimportedLibraries = true,
      },
      settings = {
        dart = {
          completeFunctionCalls = true,
          showTodos = true,
        },
      },
    })
  end,
}
