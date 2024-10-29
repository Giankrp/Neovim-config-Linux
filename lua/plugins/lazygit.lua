return {
  {
    "kdheepak/lazygit.nvim",
    config = function()
      vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<cr>", {desc = "LazyGit"})
    end,
    ft = "",
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
}
