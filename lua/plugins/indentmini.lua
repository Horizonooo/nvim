return{
  "nvimdev/indentmini.nvim",
  opts = {
    char = "┆",
  },
  config = function (_, opts)
    require("indentmini").setup(opts)
  end
}
