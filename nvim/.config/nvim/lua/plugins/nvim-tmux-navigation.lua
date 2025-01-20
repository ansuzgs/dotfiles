return {
    "alexghergh/nvim-tmux-navigation",
    config = function ()
        require("nvim-tmux-navigation").setup({})

        vim.keymap.set("n", "<C-h>", "<Cmd>NvimTmuxNavigationLeft<CR>", {})
        vim.keymap.set("n", "<C-j>", "<Cmd>NvimTmuxNavigationDown<CR>", {})
        vim.keymap.set("n", "<C-k>", "<Cmd>NvimTmuxNavigationUp<CR>", {})
        vim.keymap.set("n", "<C-l>", "<Cmd>NvimTmuxNavigationRight<CR>", {})
    end,
}
