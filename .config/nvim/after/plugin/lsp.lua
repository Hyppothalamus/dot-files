local mason_ok, mason = pcall(require, 'mason')
local masonlspconfig_ok, mason_lspconfig = pcall(require, 'mason-lspconfig')
if not mason_ok then
    -- not loaded
    return
end
if not masonlspconfig_ok then
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

local on_attach = function(_, _)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
    vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

mason_lspconfig.setup_handlers {
    function (server_name) -- default handler (optional)
        lspconfig[server_name].setup(
            require('coq').lsp_ensure_capabilities({
                on_attach = on_attach
              })
        )
    end
}
