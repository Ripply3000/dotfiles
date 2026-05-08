vim.pack.add({
    {
        src = "https://github.com/nvim-treesitter/nvim-treesitter",
        branch = "main"
    }
})

require('nvim-treesitter').install {
        "c",
        "lua",
        "vim",
        "vimdoc",
        "query",
        "yaml",
        "helm",
        "gotmpl",
        -- "elixir",
        "heex",
        "javascript",
        "html",
        "css",
        "php",
        "vue",
        --"php_only",
        "phpdoc",
        "dockerfile",
        "blade",
    -- },
    -- sync_install = true,
    -- highlight = { enable = true },
    -- indent = { enable = true },
}

-- require("nvim-treesitter.configs").setup({
--     ensure_installed = {
--         "c",
--         "lua",
--         "vim",
--         "vimdoc",
--         "query",
--         -- "elixir",
--         "heex",
--         "javascript",
--         "html",
--         "css",
--         "php",
--         "vue",
--         --"php_only",
--         "phpdoc",
--         "dockerfile",
--         "blade",
--         -- "markdown",
--         --"markdown_inline"
--     },
--     sync_install = true,
--     highlight = { enable = true },
--     indent = { enable = true },
-- })
vim.api.nvim_create_autocmd('FileType', { 
    callback = function() 
        -- Enable treesitter highlighting and disable regex syntax
        pcall(vim.treesitter.start) 
        -- Enable treesitter-based indentation
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()" 
    end, 
}) 

vim.api.nvim_create_autocmd('FileType', {
    pattern = { '<filetype>' },
    callback = function() vim.treesitter.start() end,
})
