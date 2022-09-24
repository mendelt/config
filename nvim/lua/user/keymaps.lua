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

-- telescope
keymap("n", "<leader>ff", ":lua require('telescope.builtin').find_files()<cr>", opts)
keymap("n", "<leader>fg", ":lua require('telescope.builtin').live_grep()<cr>", opts)
keymap("n", "<leader>fb", ":lua require('telescope.builtin').buffers()<cr>", opts)
keymap("n", "<leader>fh", ":lua require('telescope.builtin').help_tags()<cr>", opts)

