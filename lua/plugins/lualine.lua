return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  event = "VeryLazy",
  opts = function ()
    local opts = {
      options = {
        theme = "auto",
        component_separators = { left = "|", right = "|" },
        section_separators = { left = "█", right = "█" },
      },
      extensions = { "nvim-tree" },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch'},
        lualine_c = {'filename', 'diagnostics'},
        lualine_x = {'encoding',
          {
            'lsp_status',
            icon = 'lsp ~',
            symbols = {
              done = ''
            }
          }
        },
        lualine_y = {},
        lualine_z = {'%l/%L'}
      },
    }
    return opts
  end,
}
