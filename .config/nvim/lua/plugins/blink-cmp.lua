vim.pack.add({
    "https://github.com/xzbdmw/colorful-menu.nvim",
    "https://github.com/saghen/blink.cmp",
    "https://github.com/rafamadriz/friendly-snippets"
})

require("colorful-menu").setup({
    ls = {
        lua_ls = {
            -- Maybe you want to dim arguments a bit.
            arguments_hl = "@comment",
        },
        gopls = {
            -- By default, we render variable/function's type in the right most side,
            -- to make them not to crowd together with the original label.

            -- when true:
            -- foo             *Foo
            -- ast         "go/ast"

            -- when false:
            -- foo *Foo
            -- ast "go/ast"
            align_type_to_right = true,
            -- When true, label for field and variable will format like "foo: Foo"
            -- instead of go's original syntax "foo Foo". If align_type_to_right is
            -- true, this option has no effect.
            add_colon_before_type = false,
            -- See https://github.com/xzbdmw/colorful-menu.nvim/pull/36
            preserve_type_when_truncate = true,
        },
        -- for lsp_config or typescript-tools
        ts_ls = {
            -- false means do not include any extra info,
            -- see https://github.com/xzbdmw/colorful-menu.nvim/issues/42
            extra_info_hl = "@comment",
        },
        vtsls = {
            -- false means do not include any extra info,
            -- see https://github.com/xzbdmw/colorful-menu.nvim/issues/42
            extra_info_hl = "@comment",
        },
        ["rust-analyzer"] = {
            -- Such as (as Iterator), (use std::io).
            extra_info_hl = "@comment",
            -- Similar to the same setting of gopls.
            align_type_to_right = true,
            -- See https://github.com/xzbdmw/colorful-menu.nvim/pull/36
            preserve_type_when_truncate = true,
        },
        clangd = {
            -- Such as "From <stdio.h>".
            extra_info_hl = "@comment",
            -- Similar to the same setting of gopls.
            align_type_to_right = true,
            -- the hl group of leading dot of "•std::filesystem::permissions(..)"
            import_dot_hl = "@comment",
            -- See https://github.com/xzbdmw/colorful-menu.nvim/pull/36
            preserve_type_when_truncate = true,
        },
        zls = {
            -- Similar to the same setting of gopls.
            align_type_to_right = true,
        },
        roslyn = {
            extra_info_hl = "@comment",
        },
        dartls = {
            extra_info_hl = "@comment",
        },
        -- The same applies to pyright/pylance
        basedpyright = {
            -- It is usually import path such as "os"
            extra_info_hl = "@comment",
        },
        pylsp = {
            extra_info_hl = "@comment",
            -- Dim the function argument area, which is the main
            -- difference with pyright.
            arguments_hl = "@comment",
        },
        -- If true, try to highlight "not supported" languages.
        fallback = true,
        -- this will be applied to label description for unsupport languages
        fallback_extra_info_hl = "@comment",
    },
    -- If the built-in logic fails to find a suitable highlight group for a label,
    -- this highlight is applied to the label.
    fallback_highlight = "@variable",
    -- If provided, the plugin truncates the final displayed text to
    -- this width (measured in display cells). Any highlights that extend
    -- beyond the truncation point are ignored. When set to a float
    -- between 0 and 1, it'll be treated as percentage of the width of
    -- the window: math.floor(max_width * vim.api.nvim_win_get_width(0))
    -- Default 60.
    max_width = 1000,
})

require("blink.cmp").setup({

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
            -- border = "rounded",
            winblend = 15,
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
                -- border = "rounded",
                -- winblend = 20,
            },
        },
        menu = {
            -- window = {
            --     winblend = 0,
            --     winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:PmenuSel,Search:None",
            --     win_opts = {
            --         number = false,
            --         relativenumber = false,
            --         signcolumn = "no",
            --     },
            -- },
            draw = {
                -- We don't need label_description now because label and label_description are already
                -- combined together in label by colorful-menu.nvim.
                -- columns = { { "kind_icon" }, { "label", gap = 1 } },
                -- columns = {
                columns = {
                    { "kind_icon" }, { "label", gap = 1 },
                    { "kind_icon",  "kind" },
                    { "source_name" },
                },
                -- },
                components = {
                    label = {
                        text = function(ctx)
                            return require("colorful-menu").blink_components_text(ctx)
                        end,
                        highlight = function(ctx)
                            return require("colorful-menu").blink_components_highlight(ctx)
                        end,
                    },
                },
            },
            -- draw = {
            --     treesitter = { "lsp" },
            --     columns = {
            --         { "label",      "label_description", gap = 1 },
            --         { "kind_icon",  "kind" },
            --         { "source_name" },
            --     },
            -- },
        },
    },
    sources = {
        default = { "lsp", "path", "snippets", "buffer", "obsidian", "obsidian_tags"},
    },

    fuzzy = { implementation = "prefer_rust_with_warning" },
})
-- opts_extend = { "sources.default" },
