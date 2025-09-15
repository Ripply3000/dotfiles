return {
    "saghen/blink.cmp",
    -- optional: provides snippets for the snippet source
    dependencies = { "rafamadriz/friendly-snippets" },

    version = "1.*",

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
        -- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
        -- 'super-tab' for mappings similar to vscode (tab to accept)
        -- 'enter' for enter to accept
        -- 'none' for no mappings
        --
        -- All presets have the following mappings:
        -- C-space: Open menu or open docs if already open
        -- C-n/C-p or Up/Down: Select next/previous item
        -- C-e: Hide menu
        -- C-k: Toggle signature help (if signature.enabled = true)
        --
        -- See :h blink-cmp-config-keymap for defining your own keymap
        keymap = {

            ["<C-k>"] = { "select_prev", "fallback" },
            ["<C-j>"] = { "select_next", "fallback" },
            ["<Tab>"] = { "select_and_accept", "fallback" },
            ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
            ["<C-d>"] = { "scroll_documentation_up", "fallback" },
            ["<C-u>"] = { "scroll_documentation_down", "fallback" },

            -- disable a keymap from the preset
            ["<C-e>"] = false, -- or {}
        },

        signature = {
            enabled = true,
            window = {
                border = "rounded",
                winblend = 15
            },
        },

        appearance = {
            -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
            -- Adjusts spacing to ensure icons are aligned
            nerd_font_variant = "normal",
        },

        -- (Default) Only show the documentation popup when manually triggered
        completion = {
            ghost_text = {
                enabled = true,
            },
            documentation = {
                auto_show = true,
                window = {
                    border = "rounded",
                    winblend = 20,
                },
            },
            menu = {
                border = "rounded",
                winblend = 15,
                draw = {
                    treesitter = { 'lsp' },
                    columns = {
                        { "label",      "label_description", gap = 1 },
                        -- { "kind_icon",  "kind" },
                        { "source_name" },
                    },
                },
            },
        },
        -- completion = {
        -- 	menu = { border = "single" },
        -- 	documentation = { window = { border = "single" } },
        -- },
        -- signature = { window = { border = "single" } },

        -- completion.menu.draw.columns = { { "label", "label_description", gap = 1 }, { "kind_icon", "kind" } },

        -- Default list of enabled providers defined so that you can extend it
        -- elsewhere in your config, without redefining it, due to `opts_extend`
        sources = {
            default = { "lsp", "path", "snippets", "buffer" },
        },

        fuzzy = { implementation = "prefer_rust_with_warning" },
    },
    opts_extend = { "sources.default" },
}
