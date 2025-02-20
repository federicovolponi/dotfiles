local colorscheme = "rose-pine"

if colorscheme == "rose-pine" then
    local theme = require("core.themes.general.rose-pine")
    return theme.rosepine_moon
elseif colorscheme == "moonfly" then
    local theme = require("core.themes.general.moonfly")
    return theme.moonfly
elseif colorscheme == "onedark" then
    local theme = require("core.themes.general.onedark")
    return theme.onedark
end
