return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    actions = {
      open_file = {
        quit_on_open = true,
      },
    },
  },
  keys = {
    { "<leader>ft", ":NvimTreeToggle<CR>" },
  },
}