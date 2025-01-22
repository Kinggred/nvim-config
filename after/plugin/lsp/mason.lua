require("mason").setup()
require("mason-lspconfig").setup()

-- Then, set up LSP servers
local function attach_signature(client, bufnr)
    require("lsp_signature").on_attach({
        bind = true,
        floating_window = true,
        max_height = 5,
        doc_lines = 10,
        floating_window_above_cur_line = true,
        handler_opts = {
            border = "double",
        },
    }, bufnr)

    if client.server_capabilities.documentFormattingProvider then
        vim.api.nvim_buf_create_user_command(bufnr, "Format", function()
            vim.lsp.buf.formatting_sync()
        end, { desc = "Format current buffer with LSP" })

        -- Auto format on save for any filetype
        vim.cmd([[
            autocmd BufWritePre * lua vim.lsp.buf.format(nil, 1000)
        ]])
    end
end

-- Setup handlers for LSP servers
require("mason-lspconfig").setup_handlers {
    function(server_name)
        require("lspconfig")[server_name].setup {
            on_attach = attach_signature
        }
    end,
    ["pylsp"] = function()
        require("lspconfig").pylsp.setup {
            on_attach = attach_signature,
            settings = {
                pylsp = {
                    plugins = {
                        black = { enabled = true },
                        autopep8 = { enabled = false },
                        yapf = { enabled = false },
                        pylint = { enabled = true, executable = "pylint" },
                        pyflakes = { enabled = false },
                        pycodestyle = { enabled = false },
                        pylsp_mypy = { enabled = true },
                        jedi_completion = { fuzzy = true },
                        pyls_isort = { enabled = true },
                    },
                },
            },
        }
    end,
}
