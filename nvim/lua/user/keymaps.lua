local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Window navigation
-- keymap("n", "<C-h>", "<C-w>h, opts)
-- keymap("n", "<C-j>", "<C-w>j, opts)
-- keymap("n", "<C-k>", "<C-w>k, opts)
-- keymap("n", "<C-l>", "<C-w>l, opts)

-- Nvim tree
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

