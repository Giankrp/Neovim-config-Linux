return {
  "xiyaowong/transparent.nvim",
  config = function ()
     vim.keymap.set("n", "<leader>te", "<cmd>TransparentEnable<CR>", { desc = "Enable transparent" })
     vim.keymap.set("n", "<leader>td", "<cmd>TransparentDisable<CR>", { desc = "Disable transparent" })
  end
}
