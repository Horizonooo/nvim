return {
    "folke/tokyonight.nvim",
    opts = {
        style = "Night",
    },
    config = function (_, opts)
        require("tokyonight").setup(opts)
        vim.cmd("colorscheme tokyonight")
    end
}
