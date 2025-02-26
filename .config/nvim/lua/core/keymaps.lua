vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Copy and past on/from cliboard
keymap.set("v", "<leader>y", "\"+y")
keymap.set("n", "<leader>y", "\"+yy")
keymap.set("n", "<leader>p", "\"+p")

-- Keep cursor at center when moving vertically
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- Move between splits
-- vim.keymap.set("n", "<C-h>", "<C-w>h")
-- vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Keep cursor at center when searching
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- Remap keys for navigating tabs
keymap.set("n", "H", ":bp<CR>")
keymap.set("n", "L", ":bn<CR>")

-- Create terminal tab
keymap.set("n", "<leader>T", ":tab term<CR>")

-- Vertical split
keymap.set("n", "<leader>v", vim.cmd.vsplit)
-- Horizontal split
keymap.set("n", "<leader>h", vim.cmd.split)

-- Replace word under cursor
keymap.set("n", "<leader>R", ":%s/<c-r><c-w>/<c-r><c-w>/gc<c-f>$F/i")

-- Format with black (python)
-- keymap.set("n", "<leader>fb", ":w !black %<cr>")

-- Resize splits
keymap.set("n", "<leader>>", "<C-w>3>")
keymap.set("n", "<leader><lt>", "<C-w>3<lt>")
keymap.set("n", "<leader>+", "<C-w>3+")
keymap.set("n", "<leader>=", "<C-w>3+")
keymap.set("n", "<leader>-", "<C-w>3-")

-- Telescope
keymap.set('n', '<leader>pf', require('telescope.builtin').find_files, {})
keymap.set('n', '<leader>ps', require('telescope.builtin').live_grep, {});

-- Nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- LSP
keymap.set('n', '<leader>gg', '<cmd>lua vim.lsp.buf.hover()<CR>')
keymap.set('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
keymap.set('n', '<leader>gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
keymap.set('n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
keymap.set('n', '<leader>gt', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
keymap.set('n', '<leader>gr', '<cmd>lua require("telescope.builtin").lsp_references()<CR>')
keymap.set('n', '<leader>gs', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
keymap.set('n', '<leader>rr', '<cmd>lua vim.lsp.buf.rename()<CR>')
keymap.set('v', '<leader>gf', '<cmd>lua vim.lsp.buf.format({async = true})<CR>')
keymap.set('n', '<leader>ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')
keymap.set('n', '<leader>D', '<cmd>Telescope diagnostics bufnr=0<CR>')
keymap.set('n', '<leader>d', '<cmd>lua vim.diagnostic.open_float()<CR>')
keymap.set('n', '<leader>gp', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
keymap.set('n', '<leader>gn', '<cmd>lua vim.diagnostic.goto_next()<CR>')
keymap.set('n', '<leader>tr', '<cmd>lua require("telescope.builtin").lsp_document_symbols({ symbols={"function", "class", "method"} })<CR>')

-- Debugging
keymap.set("n", "<leader>bb", "<cmd>lua require'dap'.toggle_breakpoint()<cr>")
keymap.set("n", "<leader>bc", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>")
keymap.set("n", "<leader>bl", "<cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<cr>")
keymap.set("n", '<leader>br', "<cmd>lua require'dap'.clear_breakpoints()<cr>")
keymap.set("n", '<leader>ba', '<cmd>Telescope dap list_breakpoints<cr>')
keymap.set("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>")
keymap.set("n", "<leader>dj", "<cmd>lua require'dap'.step_over()<cr>")
keymap.set("n", "<leader>dk", "<cmd>lua require'dap'.step_into()<cr>")
keymap.set("n", "<leader>do", "<cmd>lua require'dap'.step_out()<cr>")
keymap.set("n", '<leader>dd', function() require('dap').disconnect(); require('dapui').close(); end)
keymap.set("n", '<leader>dt', function() require('dap').terminate(); require('dapui').close(); end)
keymap.set("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>")
keymap.set("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>")
keymap.set("n", '<leader>di', function() require "dap.ui.widgets".hover() end)
keymap.set("n", '<leader>d?', function() local widgets = require "dap.ui.widgets"; widgets.centered_float(widgets.scopes) end)
keymap.set("n", '<leader>df', '<cmd>Telescope dap frames<cr>')
keymap.set("n", '<leader>dh', '<cmd>Telescope dap commands<cr>')
keymap.set("n", '<leader>de', function() require('telescope.builtin').diagnostics({default_text=":E:"}) end)
