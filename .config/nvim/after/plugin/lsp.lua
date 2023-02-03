local mason_ok, mason = pcall(require, 'mason')
local masonlspconfig_ok, mason_lspconfig = pcall(require, 'mason-lspconfig')
local null_ok, null_ls = pcall(require, 'mason-null-ls')
if not mason_ok then
    -- not loaded
    return
end
if not masonlspconfig_ok then
    -- not loaded
    return
end
if not null_ok then
    -- not loaded
    return
end

local lspconfig = require('lspconfig')

mason.setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
mason_lspconfig.setup({
    ensure_installed = { "sumneko_lua", "gopls" },
    automatic_installation = true
})

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local on_attach = function(client, bufnr)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
    vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})

    -- auto save
    if client.supports_method("textDocument/formatting") then
        vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
        vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
                -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
                vim.lsp.buf.format({ bufnr = bufnr })
            end,
        })
    end
end

mason_lspconfig.setup_handlers {
    function(server_name) -- default handler (optional)
        lspconfig[server_name].setup(
            require('coq').lsp_ensure_capabilities({
                on_attach = on_attach
            })
        )
    end
}
null_ls.setup({
    automatic_setup = true
})
