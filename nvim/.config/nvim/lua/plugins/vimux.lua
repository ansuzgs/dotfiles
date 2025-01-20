return {
    "preservim/vimux",
    config = function ()
        -- configuracions de vimux
        vim.g.VimuxHeight = 20
        vim.g.VimuxOrientation = "v"
        vim.g.VimuxCloseOnExit = 1
        vim.g.VimuxPromptString = "Vimux: "

        -- Atajos para comandos de Vimux
        vim.keymap.set("n", "<leader>m", function ()
            vim.cmd("VimuxRunCommand('make')")
        end, { noremap = true, silent = true, desc = "Ejecutar Makefile" })

        vim.keymap.set("n", "<leader>M", ":VimuxPromptCommand<CR>", {
            noremap = true,
            silent = true,
            desc = "Ejecutar comando personalizado en tmux"
        })
    end
}
