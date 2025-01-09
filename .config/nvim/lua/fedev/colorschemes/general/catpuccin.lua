local M = {}
M.catppuccin_mocha = {
      { "catppuccin/nvim", name = "catppuccin", priority = 1000, 
      config = function()
          require("catppuccin").setup({
              flavour = "mocha",
              transparent_background = false,
          })
          vim.cmd.colorscheme "catppuccin"
      end
    }
}
return M
