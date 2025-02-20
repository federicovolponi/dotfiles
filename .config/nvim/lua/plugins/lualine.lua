-- Bar showing at the bottom
local colorscheme = require("core.themes.lualine.rose-pine")

return {
    'nvim-lualine/lualine.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
        'tpope/vim-fugitive',
    },
    config = function()
        require('lualine').setup {
            options = {
                theme = colorscheme.rosepine_moon(),
                component_separators = '',
                section_separators = { left = '', right = '' },
            },
            sections = {
                lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
                lualine_b = { 'filename', 'branch' },
                lualine_c = {
                    '%=', --[[ add your center compoentnts here in place of this comment ]]
                },
                lualine_x = {},
                lualine_y = { 'filetype', 'progress' },
                lualine_z = {
                    { 'location', separator = { right = '' }, left_padding = 2 },
                },
            },
            inactive_sections = {
                lualine_a = { 'filename' },
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {},
            },
            tabline = {},

            disabled_filetypes = {
                "NVimTree",
                "dapui_stacks",
                "dapui_watches",
                "dapui_breakpoints",
                "dapui_scopes",
                "dapui_console",
                "dap-repl",
                "fugitiveblame",
                statusline = {},
            },
            extensions = { "fugitive", "nvim-tree", "nvim-dap-ui" },
        }
    end
}
