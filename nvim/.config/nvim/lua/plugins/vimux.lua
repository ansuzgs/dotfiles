return {
    "preservim/vimux",
    config = function ()
        -- configuracions de vimux
        vim.g.VimuxHeight = 20
        vim.g.VimuxOrientation = "v"
        vim.g.VimuxCloseOnExit = 1
        vim.g.VimuxPromptString = "Vimux: "
    end
}
