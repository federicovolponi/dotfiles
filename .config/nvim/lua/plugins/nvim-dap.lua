return {
	'mfussenegger/nvim-dap',
    config = function()
        local dap = require("dap")
        local keymap = vim.keymap -- for conciseness
       
        keymap.set("n", "<leader>db", dap.toggle_breakpoint, {desc = "Toggle breakpoint"})
        keymap.set("n", "<leader>dc", dap.continue, {desc = "Debug continue"})
        keymap.set("n", "<leader>di", dap.step_into, {desc = "Step into"})
        keymap.set("n", "<leader>do", dap.step_out, {desc = "Step out"})
        keymap.set("n", "<leader>dO", dap.step_over, {desc = "Step over"})
        keymap.set("n", "<leader>dp", dap.pause, {desc = "Pause"})
        keymap.set("n", "<leader>dt", dap.terminate, {desc = "Terminate debug"})
    end,
}
