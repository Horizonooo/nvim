return{
  "nvimdev/indentmini.nvim",
  opts = {
    char = "┆",
  },
  config = function (_, opts)
    vim.cmd.highlight('IndentLine guifg=#555555')
    vim.cmd.highlight('IndentLineCurrent guifg=#00ff00')
    require("indentmini").setup(opts)
  end
}
