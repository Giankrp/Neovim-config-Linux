return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    local tg = require("toggleterm").setup()
    vim.keymap.set(
      "n",
      "<leader>tt",
      "<cmd>ToggleTerm direction=horizontal size=20<CR>",
      { desc = "toggleterm" },
      { silent = true }
    )
    vim.keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float size=12<CR>", { desc = "float term" })
  end,
}
