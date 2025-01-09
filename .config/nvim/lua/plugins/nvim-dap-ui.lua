return {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = "mfussenegger/nvim-dap",
    opts = {
        ensure_installed = {
            "nvim-neotest/nvim-nio",
        }
    },
    config = function ()
        local dap = require("dap")
        local dapui = require("dapui")
        local keymap = vim.keymap
        dapui.setup()
        dap.listeners.before.attach.dapui_config = function()
          dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
          dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
          dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
          dapui.close()
        end
        keymap.set("n", "<leader>du", dapui.eval, {desc = "See expression under cursor"})
    end
}
