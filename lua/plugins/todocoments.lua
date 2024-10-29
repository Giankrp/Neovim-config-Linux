return {
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  config =function ()
      require("todo-comments").setup({})
      vim.keymap.set("n", "<leader>xt", "<cmd>TodoTrouble<cr>", {desc = "Todo (Trouble)"})
      vim.keymap.set("n", "<leader>xT", "<cmd>TodoTrouble keywords=TODO,FIX,FIXME<cr>", {desc = "Todo/Fix/Fixme (Trouble)"})
      vim.keymap.set("n",  "<leader>st", "<cmd>TodoTelescope<cr>", {desc = "Todo"})
      vim.keymap.set("n", "<leader>sT", "<cmd>TodoTelescope keywords=TODO,FIX,FIXME<cr>", {desc = "Todo/Fix/Fixme"})
    end,

    ft = "",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
}
