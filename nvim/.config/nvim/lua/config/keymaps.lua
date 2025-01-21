-- Función para simplificar los mapeos
local function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options) -- Usar vim.keymap.set aquí
end

-- General Keymaps
map("n", "<leader>w", ":w<CR>", { desc = "Guardar archivo" })
map("n", "<leader>q", ":q<CR>", { desc = "Cerrar Neovim" })
map("i", "jk", "<Esc>", { desc = "Salir del modo Insertar" })

-- Telescope
map("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Buscar archivos" })
map("n", "<leader>fw", ":Telescope grep_string<CR>", { desc = "Buscar palabra bajo el cursor" })
map("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = "Buscar texto en el proyecto" })
map("n", "<leader>fb", ":Telescope buffers<CR>", { desc = "Listar buffers abiertos" })
map("n", "<leader>fo", function()
    require("telescope.builtin").live_grep({ search_dirs = { '~/orgfiles' }, prompt_title = "Buscar texto en .org" })
end, { desc = "Buscar en archivos .org" })

-- Gitsigns
map("n", "<leader>gh", ":Gitsigns preview_hunk<CR>", { desc = "Previsualizar cambios actuales" })
map("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", { desc = "Mostrar línea culpable" })
map("n", "<leader>gd", ":Gitsigns diffthis<CR>", { desc = "Mostrar diferencias" })

-- Neo-tree
map("n", "<C-n>", ":Neotree filesystem reveal toggle left<CR>", { desc = "Abrir árbol de archivos" })
map("n", "<leader>bf", ":Neotree buffers reveal toggle float<CR>", { desc = "Abrir árbol de buffers" })

-- Debugging (DAP)
local dap = require("dap")
map("n", "<leader>db", dap.toggle_breakpoint, { desc = "Activar/desactivar breakpoint" })
map("n", "<leader>dc", dap.continue, { desc = "Continuar ejecución" })
map("n", "<leader>do", dap.step_over, { desc = "Ejecutar siguiente instrucción (over)" })
map("n", "<leader>di", dap.step_into, { desc = "Entrar en la instrucción (into)" })
map("n", "<leader>dr", dap.repl.open, { desc = "Abrir REPL de debugging" })

-- Vimux
map("n", "<leader>cm", ":VimuxPromptCommand<CR>", { desc = "Ejecutar comando en tmux" })
map("n", "<leader>rm", ":VimuxRunCommand('make')<CR>", { desc = "Ejecutar Makefile en tmux" })

-- Tmux Navigation
map("n", "<C-h>", "<Cmd>NvimTmuxNavigationLeft<CR>", { desc = "Moverse a la ventana izquierda (tmux)" })
map("n", "<C-j>", "<Cmd>NvimTmuxNavigationDown<CR>", { desc = "Moverse a la ventana inferior (tmux)" })
map("n", "<C-k>", "<Cmd>NvimTmuxNavigationUp<CR>", { desc = "Moverse a la ventana superior (tmux)" })
map("n", "<C-l>", "<Cmd>NvimTmuxNavigationRight<CR>", { desc = "Moverse a la ventana derecha (tmux)" })

-- Oil.nvim
map("n", "-", ":lua require('oil').toggle_float()<CR>", { desc = "Abrir vista de Oil" })

-- LSP
map("n", "K", vim.lsp.buf.hover, { desc = "Mostrar documentación flotante" })
map("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Ir a la definición" })
map("n", "<leader>gr", vim.lsp.buf.references, { desc = "Buscar referencias" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Acciones de código" })
map("n", "<leader>gf", vim.lsp.buf.format, { desc = "Formatear código" })
map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Renombrar símbolo" })

-- Diagnóstico
-- Navegar entre diagnósticos
map("n", "[d", vim.diagnostic.goto_prev, { desc = "Ir al diagnóstico anterior" })
map("n", "]d", vim.diagnostic.goto_next, { desc = "Ir al diagnóstico siguiente" })
-- Trouble
map("n", "<leader>xx", "<cmd>TroubleToggle<CR>", { desc = "Abrir Trouble" })
map("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<CR>", { desc = "Diagnósticos del workspace" })
map("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<CR>", { desc = "Diagnósticos del documento" })
map("n", "<leader>xr", "<cmd>TroubleToggle lsp_references<CR>", { desc = "Referencias del LSP" })

-- TODO-comments
map("n", "<leader>ft", ":TodoTelescope<CR>", { desc = "Buscar TODOs con Telescope" })

