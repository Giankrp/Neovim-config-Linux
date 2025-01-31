return {
  "folke/zen-mode.nvim",
  config = function()
    vim.keymap.set("n", "Z","<cmd>ZenMode<CR>" , { desc = "Zenmode" })
  end,
}
