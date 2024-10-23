vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Keep cursor at center when moving vertically
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Move between splits
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Keep cursor at center when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Vertical split
vim.keymap.set("n", "<leader>v", vim.cmd.vsplit)
-- Replace word under cursor
vim.keymap.set("n", "<leader>R", ":%s/<c-r><c-w>/<c-r><c-w>/gc<c-f>$F/i")

-- Format with black (python)
vim.keymap.set("n", "<leader>fb", ":w !black %<cr>")
