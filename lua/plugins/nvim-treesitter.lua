return{
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = false,
  config = function ()
    require('nvim-treesitter.configs').setup {
      ensure_installed = {
        "c",
        "cpp",
        "java",
        "javadoc",
        "lua",
        "luadoc",
        "markdown",
        "markdown_inline",
      }
    }
  end
}
