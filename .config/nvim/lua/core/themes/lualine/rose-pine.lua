local M = {}
    M.rosepine_moon = function()
        local colors = {
            white = "#e0def4",
            inactivebg = "#44415a",
            innerbg = "#44415a",
            outerbg = "#6e6a86",
            normal = "#3e8fb0",
            insert = "#eb6f92",
            visual = "#907aa9",
            replace = "#ea9d34",
            command = "#ea9d34",
        }
        return {
            inactive = {
                a = { fg = colors.white, bg = colors.inactivebg, gui = "bold" },
                b = { fg = colors.white, bg = colors.inactivebg },
                c = { fg = colors.white, bg = colors.innerbg },
            },
            visual = {
                a = { fg = colors.white, bg = colors.visual, gui = "bold" },
                b = { fg = colors.white, bg = colors.outerbg },
                c = { fg = colors.white, bg = colors.innerbg },
            },
            replace = {
                a = { fg = colors.white, bg = colors.replace, gui = "bold" },
                b = { fg = colors.white, bg = colors.outerbg },
                c = { fg = colors.white, bg = colors.innerbg },
            },
            normal = {
                a = { fg = colors.white, bg = colors.normal, gui = "bold" },
                b = { fg = colors.white, bg = colors.outerbg },
                c = { fg = colors.white, bg = colors.innerbg },
            },
            insert = {
                a = { fg = colors.white, bg = colors.insert, gui = "bold" },
                b = { fg = colors.white, bg = colors.outerbg },
                c = { fg = colors.white, bg = colors.innerbg },
            },
            command = {
                a = { fg = colors.white, bg = colors.command, gui = "bold" },
                b = { fg = colors.white, bg = colors.outerbg },
                c = { fg = colors.white, bg = colors.innerbg },
            },
        }
    end
return M
