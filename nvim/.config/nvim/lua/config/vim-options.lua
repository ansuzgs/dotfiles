vim.g.mapleader = " "

vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.opt.swapfile = false

-- Navigate vim panes
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>')

vim.keymap.set("n", "<leader>ld", vim.diagnostic.setloclist, { desc = "Show buffer diagnostics" })

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.relativenumber = true
vim.cmd("set nu rnu")

