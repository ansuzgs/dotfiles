return {
    "folke/trouble.nvim",
    dependenvies = { "nvim-tree/nvim-web-devicons" },
    config = function ()
        require("trouble").setup()
    end,
}
