return {
  {
    "williamboman/mason.nvim",

    config = function()
      require("mason").setup()
    end,
  },

  -- {
  --  "folke/neoconf.nvim",
  -- config = function()
  --  require("neoconf").setup({})
  --end,
  --},
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "clangd",
          "gopls",
          "astro",
          "html",
          "cssls",
        },
      })
    end,
  },
  {
    -- LSP Configuration & Plugins
    "neovim/nvim-lspconfig",
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      { "williamboman/mason.nvim", config = true },
      "williamboman/mason-lspconfig.nvim",

      -- Useful status updates for LSP
      -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
      { "j-hui/fidget.nvim",       opts = {} },
      "nvimtools/none-ls.nvim",
      -- Additional lua configuration, makes nvim stuff amazing!
      "folke/lazydev.nvim",
      {
        "folke/neoconf.nvim",
        cmd = "Neoconf",
        opts = {},
      },
    },

    -- {
    --   "neovim/nvim-lspconfig",
    --  dependencies = {
    --    "nvimtools/none-ls.nvim",

    --},
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")
      local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
      for type, icon in pairs(signs) do
        local hl = "DiagnosticSign" .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
      end
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.volar.setup({
        capabilities = capabilities,
        filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "json" },
        init_options = {
          vue = {
            hybridMode = false,
          },
        },
      })

      lspconfig.ts_ls.setup({
        capabilities = capabilities,
        --init_options = {
        -- plugins = {
        --   {
        --    name = "@vue/typescript-plugin",
        --   location = " /home/gian/.local/share/pnpm/global/5/node_modules/@vue/typescript-plugin",
        --  languages = { "vue" },
        --},
        --},
        --  },
        --  filetypes = {
        --   "javascript",
        --  "typescript",
        --    "vue",
        -- },
      })

      lspconfig.clangd.setup({
        capabilities = capabilities,
      })

      lspconfig.crystalline.setup({
        capabilities = capabilities,
      })
      lspconfig.rust_analyzer.setup({
        capabilities = capabilities,
      })
      lspconfig.gopls.setup({
        capabilities = capabilities,
        settings = {
          gopls = {
            analyses = {
              unusedparams = true,
            },
          },
        },
      })
      lspconfig.astro.setup({
        capabilities = capabilities,
      })
      lspconfig.html.setup({
        capabilities = capabilities,
      })
      lspconfig.cssls.setup({
        capabilities = capabilities,
      })
      lspconfig.eslint.setup({
        capabilities = capabilities,
        on_attach = function(client, bufnr)
          vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            command = "EslintFixAll",
          })
        end,
      })

      lspconfig.oxlint.setup({
        capabilities = capabilities
      })
      lspconfig["emmet_ls"].setup({
        capabilities = capabilities,
        filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "svelte" },
      })
      lspconfig.angularls.setup({
        capabilities = capabilities,
      })
      lspconfig.tailwindcss.setup({
        capabilities = capabilities,
      })
      lspconfig.jdtls.setup({
        capabilities = capabilities,
      })
      vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP hover" })
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to definition" })
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Go to references" })
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP code actions" })
      vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { desc = "Lsp Rename" })
    end,
  },
}
