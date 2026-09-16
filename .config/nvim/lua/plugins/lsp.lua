-- OLD LSP CONFIG (kept for reference)
vim.pack.add({
    "https://github.com/neovim/nvim-lspconfig",
    "https://github.com/williamboman/mason.nvim",
    "https://github.com/williamboman/mason-lspconfig.nvim",
})

require("mason").setup({})
require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",
        "phpactor",
        "bashls",
        "marksman",
        "ansiblels",
        "eslint",
        "cssls",
        "terraformls",
        "dockerls",
        "docker_compose_language_service",
        "pyright",
        "gitlab_ci_ls",
        "helm_ls",
        "omnisharp",
        -- "csharpier"
        -- "csharp_ls"
        -- "intelephense",
        -- "tsserver",
        -- "volar",
        -- "pylyzer",
    },
})

vim.lsp.enable('lua_ls')
vim.lsp.enable('phpator')
vim.lsp.enable('bashls')
vim.lsp.enable('marksman')
vim.lsp.enable('ansiblels')
vim.lsp.enable('eslint')
vim.lsp.enable('cssls')
vim.lsp.enable('stimulus_ls')
vim.lsp.enable('terraformls')
vim.lsp.enable('terraform_lsp')
vim.lsp.enable('dockerls')
vim.lsp.enable('docker_compose_language_service')
vim.lsp.enable('pyright')
vim.lsp.enable('gitlab_ci_ls')
vim.lsp.enable('omnisharp')

-- local capabilities = require("blink-cmp").get_lsp_capabilities()

vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

-- NEW LSP CONFIG FOR NEOVIM 0.12
-- vim.pack.add({
--     "https://github.com/neovim/nvim-lspconfig",
--     "https://github.com/williamboman/mason.nvim",
--     "https://github.com/williamboman/mason-lspconfig.nvim",
-- })
--
-- local servers = {
--     "lua_ls",
--     "phpactor",
--     "bashls",
--     "marksman",
--     "ansiblels",
--     "eslint",
--     "cssls",
--     "terraformls",
--     "dockerls",
--     "docker_compose_language_service",
--     "pyright",
--     "gitlab_ci_ls",
--     "helm_ls",
--     "omnisharp",
-- }
--
-- require("mason").setup({})
-- require("mason-lspconfig").setup({
--     ensure_installed = servers,
-- })
--
-- local ok_blink, blink = pcall(require, "blink.cmp")
-- if ok_blink then
--     local capabilities = blink.get_lsp_capabilities()
--     for _, server in ipairs(servers) do
--         vim.lsp.config(server, {
--             capabilities = capabilities,
--         })
--     end
-- end
--
-- for _, server in ipairs(servers) do
--     vim.lsp.enable(server)
-- end
--
-- vim.api.nvim_create_autocmd("LspAttach", {
--     callback = function(event)
--         local opts = { buffer = event.buf, silent = true }
--         vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
--         vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
--         -- vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
--     end,
-- })
