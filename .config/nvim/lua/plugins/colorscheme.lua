
local colorscheme = "rose-pine"

if colorscheme == "catppuccin" then
    return {
      -- add gruvbox
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
elseif colorscheme == "rose-pine" then
    return {
      -- add gruvbox
      { "rose-pine/neovim", name = "rose-pine", priority = 1000, 
      config = function()
          require("rose-pine").setup({
              variant = "moon",
              styles = {
                transparency = true,
              }

          })
          vim.cmd.colorscheme "rose-pine"
      end
      }
    }
end
