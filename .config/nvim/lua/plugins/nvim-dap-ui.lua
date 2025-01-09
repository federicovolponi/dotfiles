return {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = "mfussenegger/nvim-dap",
    opts = {
        ensure_installed = {
            "nvim-neotest/nvim-nio",
        },
        layouts = {
      {
         elements = {
           { id = "repl", size = 0.33 },
           { id = "breakpoints", size = 0.33 },
           { id = "stacks", size = 0.33 },
         },
         position = "left",
         size = 25,
      },
      {
        elements = {
          { id = "console", size = 0.15 },
          { id = "scopes", size = 0.50 },
          { id = "watches", size = 0.35 },
        },
        position = "bottom",
        size = 15,
      },
    },
    },
    config = function (_, opts)
        local dap = require("dap")
        local dapui = require("dapui")
        local keymap = vim.keymap
        dapui.setup(opts)
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

        -- Define layout
    end
}
