return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },

  config = function()
    local harpoon = require("harpoon")
    harpoon:setup()
    vim.keymap.set("n", "<leader>Ha", function()
      harpoon:list():add()
    end, { desc = "Add a mark" })
    vim.keymap.set("n", "<leader>He", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = "List marks" })
    vim.keymap.set("n", "<leader>Ho", function()
      harpoon:list():select(1)
    end, { desc = "Go to first Mark" })
    vim.keymap.set("n", "<leader>Ht", function()
      harpoon:list():select(2)
    end, { desc = "Go to second Mark" })
    vim.keymap.set("n", "<leader>HT", function()
      harpoon:list():select(3)
    end, { desc = "Go to third Mark" })
    vim.keymap.set("n", "<leader>Hf", function()
      harpoon:list():select(4)
    end, { desc = "Go to fourth Mark" })
    vim.keymap.set("n", "<leader>Hp", function()
      harpoon:list():prev()
    end)
    vim.keymap.set("n", "<leader>Hn", function()
      harpoon:list():next()
    end, { desc = "Go to fifth Mark" })
  end,
}
