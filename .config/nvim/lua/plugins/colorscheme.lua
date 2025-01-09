
local colorscheme = "rose-pine"

if colorscheme == "catppuccin" then
   local theme = require("fedev.colorschemes.general.catpuccin")
   return theme.catppuccin_mocha
elseif colorscheme == "rose-pine" then
    local theme = require("fedev.colorschemes.general.rosepine")
    return theme.rosepine_moon
end
