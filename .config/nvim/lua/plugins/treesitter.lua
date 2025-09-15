return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function ()
            local configs = require("nvim-treesitter.configs")

            configs.setup({
                --auto_install = true,
                ensure_installed = {
                    "c",
                    "lua",
                    "vim",
                    "vimdoc",
                    "query",
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
                    -- "markdown",
                    --"markdown_inline"
                },
                sync_install = true,
                highlight = { enable = true },
                indent = { enable = true },
            })
        end
    }
}
