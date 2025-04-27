return {
  "nvimtools/none-ls.nvim",
  dependencies = { "mason.nvim" },
  config = function()
    local null_ls = require("null-ls")
    local lint = null_ls.builtins.diagnostics
    local formatting = null_ls.builtins.formatting
    local actions = null_ls.builtins.code_actions
    local sources = {
     -- lint.mypy.with({
      --  extra_args = function()
       --   local virtual = os.getenv("VIRTUAL_ENV") or os.getenv("CONDA_PREFIX") or "/usr"
       --   return { "--python-executable", virtual .. "/bin/python3" }
       -- end,
      --}),
      lint.checkstyle.with({
        extra_args = { "-c", "/google_checks.xml" },
      }),
      formatting.stylua,
      formatting.prettier,
      formatting.prettier.with({ filetypes = { "astro" } }),
      formatting.gofumpt,
      formatting.goimports_reviser,
      formatting.golines,
      formatting.google_java_format,
      formatting.black,
      actions.gomodifytags,
    }

    null_ls.setup({ sources = sources })
    vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format, { desc = "code format" })
  end,
}
