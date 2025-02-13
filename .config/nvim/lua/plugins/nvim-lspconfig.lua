-- LSP Support
return {
    -- LSP Configuration
    'neovim/nvim-lspconfig',
    event = 'VeryLazy',
    dependencies = {
        -- LSP Management
        { 'williamboman/mason.nvim' },
        { 'williamboman/mason-lspconfig.nvim' },
        { 'WhoIsSethDaniel/mason-tool-installer.nvim' },
    },
    config = function()
        require('mason').setup()
        require('mason-lspconfig').setup({
            -- Install these LSPs automatically
            ensure_installed = {
                'bashls', -- requires npm to be installed
                'lua_ls',
                'pyright',
                'dockerls',
                'clangd',
                'jdtls',
                'jsonls', -- requires npm to be installed
                'lemminx',
                'marksman',
                'quick_lint_js',
            }
        })

        require('mason-tool-installer').setup({
            -- Install these linters, formatters, debuggers automatically
            ensure_installed = {
                "codelldb",
                "java-debug-adapter",
            },
        })
        vim.api.nvim_command('MasonToolsInstall')

        local lspconfig = require('lspconfig')
        local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
        local lsp_attach = function(client, bufnr)
            -- Create your keybindings here...
        end

        -- Call setup on each LSP server
        require('mason-lspconfig').setup_handlers({
            function(server_name)
                if server_name ~= "jdtls" then
                    lspconfig[server_name].setup({
                        on_attach = lsp_attach,
                        capabilities = lsp_capabilities,
                    })
                end
            end
        })

        -- Lua LSP settings
        lspconfig.lua_ls.setup {
            settings = {
                Lua = {
                    diagnostics = {
                        -- Get the language server to recognize the `vim` global
                        globals = { 'vim' },
                    },
                },
            },
        }
        -- Pyright LSP settings
        lspconfig.pyright.setup {}

        -- Clangd LSP setttings
        lspconfig.clangd.setup {
            cmd = {
                "clangd",
                "--header-insertion=never",
            }
        }

        -- Globally configure all LSP floating preview popups (like hover, signature help, etc)
        local open_floating_preview = vim.lsp.util.open_floating_preview
        function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
            opts = opts or {}
            opts.border = opts.border or "rounded" -- Set border to rounded
            return open_floating_preview(contents, syntax, opts, ...)
        end
    end
}
