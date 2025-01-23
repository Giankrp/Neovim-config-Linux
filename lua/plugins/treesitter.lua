return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")

    config.setup({
      -- Configuración de Treesitter
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },

      -- Configuración específica para los text objects
      textobjects = {
        select = {
          enable = true,
          lookahead = true, -- Permite saltar al siguiente objeto visible automáticamente
          keymaps = {
            -- Mapeos para text objects
            ["af"] = "@function.outer", -- Seleccionar una función completa
            ["if"] = "@function.inner", -- Seleccionar el interior de una función
            ["ac"] = "@class.outer", -- Seleccionar una clase completa
            ["ic"] = "@class.inner", -- Seleccionar el interior de una clase
          },
        },
        move = {
          enable = true,
          set_jumps = true,       -- Añade saltos a la lista de `jumplist`
          goto_next_start = {
            ["]m"] = "@function.outer", -- Ir al inicio de la siguiente función
            ["]c"] = "@class.outer", -- Ir al inicio de la siguiente clase
          },
          goto_next_end = {
            ["]M"] = "@function.outer", -- Ir al final de la siguiente función
            ["]C"] = "@class.outer", -- Ir al final de la siguiente clase
          },
          goto_previous_start = {
            ["[m"] = "@function.outer", -- Ir al inicio de la función anterior
            ["[c"] = "@class.outer", -- Ir al inicio de la clase anterior
          },
          goto_previous_end = {
            ["[M"] = "@function.outer", -- Ir al final de la función anterior
            ["[C"] = "@class.outer", -- Ir al final de la clase anterior
          },
        },
      },
    })
  end,
}
