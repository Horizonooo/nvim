return{
    'nvimdev/lspsaga.nvim',
    dependencies ={
        'nvim-treesitter/nvim-treesitter', -- optional
        'nvim-tree/nvim-web-devicons',     -- optional
    },
    opts = {},
    config = function (_, opts)
        require('lspsaga').setup(opts)
    end,
}
