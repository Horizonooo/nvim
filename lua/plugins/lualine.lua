return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  event = "VeryLazy",
  opts = function ()
    local opts = {
      options = {
        theme = "tomorrow_night",
        component_separators = { left = "|", right = "|" },
        section_separators = { left = '', right = '' },
      },
      extensions = { "nvim-tree" },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch'},
        lualine_c = {'filename', 'diagnostics'},
        lualine_x = {
          'encoding',
          {
            function ()
              return "Tab:" .. vim.api.nvim_buf_get_option(0, "shiftwidth")
            end
          },
          {
            'lsp_status',
            symbols = {
              done = ''
            }
          }
        },
        lualine_y = {'fileformat'},
        lualine_z = {'%l/%L'}
      },
    }
    return opts
  end,
}
