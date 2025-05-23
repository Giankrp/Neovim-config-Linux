return {
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require('gitsigns').setup({})
      vim.keymap.set('n', '<leader>hR', '<cmd>Gitsigns reset_buffer<CR>')
      vim.keymap.set('n', '<leader>hp', '<cmd>Gitsigns preview_hunk<CR>')
      vim.keymap.set('n', '<leader>tb', '<cmd>Gitsigns toggle_current_line_blame<CR>')
      vim.keymap.set('n', '<leader>hd', '<cmd>Gitsigns diffthis<CR>')
      vim.keymap.set('n', '<leader>hD', '<cmd>Gitsigns diffthis<CR>')
      vim.keymap.set('n', '<leader>td', '<cmd>Gitsigns toggle_deleted<CR>')
    end
  },

}
