return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = {
            auto_install = true,
        },
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local cmp_nvim_lsp = require("cmp_nvim_lsp")
            local capabilities = vim.tbl_deep_extend(
                "force",
                {},
                vim.lsp.protocol.make_client_capabilities(),
                cmp_nvim_lsp.default_capabilities()
            )

            local lspconfig = require("lspconfig")

            lspconfig.lua_ls.setup({
                capabilities = capabilities
            })

            lspconfig.clangd.setup({
                capabilities = capabilities,
                cmd = { "clangd" },
                root_dir = lspconfig.util.root_pattern("compile_commands.json", ".git"),
                init_options = {
                    compilationDatabasePath = ".",
                }
            })

            lspconfig.autotools_ls.setup({
                capabilities = capabilities
            })
        end,
    },
}
