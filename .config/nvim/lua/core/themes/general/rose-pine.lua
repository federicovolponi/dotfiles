local M = {}

M.rosepine_moon = {
  { "rose-pine/neovim", name = "rose-pine", priority = 1000,
  config = function()
      require("rose-pine").setup({
          variant = "moon",
          styles = {
            transparency = false,
          }
      })
      vim.cmd.colorscheme "rose-pine"
  end
  }
}
return M
