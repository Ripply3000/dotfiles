return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    keys = {
        {
            "<leader>lg",
            function()
                Snacks.lazygit()
            end,
            desc = "Lazygit",
        },
        {
            "<leader>fb",
            function()
                Snacks.picker.buffers()
            end,
            desc = "Buffers",
        },
        {
            "<leader>ff",
            function()
                Snacks.picker.files()
            end,
            desc = "Find Files",
        },
        {
            "<leader>fs",
            function()
                Snacks.picker.grep()
            end,
            desc = "Grep",
        },
        {
            "<leader>fr",
            function()
                Snacks.picker.registers()
            end,
            desc = "Registers",
        },
        {
            "<leader>fh",
            function()
                Snacks.picker.help()
            end,
            desc = "Help Pages",
        },
        {
            "<leader>fo",
            function()
                Snacks.picker.grep_buffers()
            end,
            desc = "Grep Open Buffers",
        },
        -- {
        --     "<leader>ca",
        --     function()
        --         vim.lsp.buf.code_action
        --     end,
        --     desc = "LSP Code Action",
        -- },
    },
    ---@type snacks.Config
    opts = {
        bigfile = { enabled = true },
        -- dashboard = { enabled = true },
        -- explorer = { enabled = true },
        -- indent = { enabled = true },
        -- input = { enabled = true },
        -- picker = { enabled = true },
        -- notifier = { enabled = true },
        -- quickfile = { enabled = true },
        -- scope = { enabled = true },
        -- scroll = { enabled = true },
        -- statuscolumn = { enabled = true },
        -- words = { enabled = true },
        -- terminal = {
        --     enabled = true,
        --     win = {
        --         style = { "terminal" },
        --     },
        -- },
        dashboard = {
            -- sections = {
            --     {
            --         section = "terminal",
            --         cmd = "ascii-image-converter '/Users/ripply/Pictures/Wallpapers/Armored Core/Rusty Emblem.webp' -C -d 50,50",
            --         height = 25,
            --         padding = 1,
            --     },
            --     {
            --         pane = 2,
            --         { section = "keys",   gap = 1, padding = 1 },
            --         { section = "startup" },
            --     },
            -- },
            -- sections = {
            -- 	{ section = "header" },
            -- 	{ section = "keys", gap = 1, padding = 1 },
            -- 	{ section = "startup" },
            -- 	{
            -- 		section = "terminal",
            -- 		cmd = "pokemon-colorscripts -r --no-title; sleep .1",
            -- 		random = 10,
            -- 		pane = 2,
            -- 		indent = 4,
            -- 		height = 30,
            -- 	},
            -- },
            sections = {
                { section = "header" },
                { section = "keys",   gap = 1, padding = 1 },
                { section = "startup" },
            },
            preset = {
                -- keys = {
                -- 	-- { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
                -- 	-- { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
                -- 	-- { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
                -- 	-- { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
                -- 	-- {
                -- 	--   icon = " ",
                -- 	--   key = "c",
                -- 	--   desc = "Config",
                -- 	--   action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
                -- 	-- },
                -- 	{ icon = " ", key = "s", desc = "Restore Session", section = "session" },
                -- 	-- { icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
                -- 	{ icon = " ", key = "<esc>", desc = "Quit", action = ":qa" },
                -- },
                -- Font Name: ANSI Shadow
                -- https://patorjk.com/software/taag
                header = [[
 ██▀███   ██▓ ██▓███   ██▓███   ██▓    ▓██   ██▓    ██▒   █▓ ██▓ ███▄ ▄███▓
▓██ ▒ ██▒▓██▒▓██░  ██▒▓██░  ██▒▓██▒     ▒██  ██▒   ▓██░   █▒▓██▒▓██▒▀█▀ ██▒
▓██ ░▄█ ▒▒██▒▓██░ ██▓▒▓██░ ██▓▒▒██░      ▒██ ██░    ▓██  █▒░▒██▒▓██    ▓██░
▒██▀▀█▄  ░██░▒██▄█▓▒ ▒▒██▄█▓▒ ▒▒██░      ░ ▐██▓░     ▒██ █░░░██░▒██    ▒██
░██▓ ▒██▒░██░▒██▒ ░  ░▒██▒ ░  ░░██████▒  ░ ██▒▓░      ▒▀█░  ░██░▒██▒   ░██▒
░ ▒▓ ░▒▓░░▓  ▒▓▒░ ░  ░▒▓▒░ ░  ░░ ▒░▓  ░   ██▒▒▒       ░ ▐░  ░▓  ░ ▒░   ░  ░
░▒ ░ ▒░ ▒ ░░▒ ░     ░▒ ░     ░ ░ ▒  ░ ▓██ ░▒░       ░ ░░   ▒ ░░  ░      ░
░░   ░  ▒ ░░░       ░░         ░ ░    ▒ ▒ ░░          ░░   ▒ ░░      ░
░      ░                        ░  ░ ░ ░              ░   ░         ░
                ]],
            },
            -- sections = {
            --     {
            --         section = "terminal",
            --         -- cmd = "chafa ~/ds-sun.jpg --format symbols --symbols vhalf --size 60x17 --stretch; sleep .1",
            --         cmd = "chafa ~/ds-sun.jpg --format symbols --symbols vhalf --size 60x17 --stretch; sleep .1",
            --         height = 17,
            --         padding = 1,
            --     },
            --     {
            --         pane = 2,
            --         { section = "keys",   gap = 1, padding = 1 },
            --         { section = "startup" },
            --     },
            -- },
        },
        picker = {
            enabled = true,
            ui_select = true,
            layout = {
                preset = "default_adjusted",
                cycle = true,
                fullscreen = true,
            },
            layouts = {
                default_adjusted = {
                    layout = {
                        box = "horizontal",
                        width = 0.8,
                        min_width = 75,
                        height = 0.8,
                        {
                            box = "vertical",
                            border = "none",
                            title = "{title} {live} {flags}",
                            { win = "input", height = 1,     border = "rounded" },
                            { win = "list",  border = "rounded" },
                        },
                        { win = "preview", title = "{preview}", border = "rounded", width = 0.65 },
                    },
                },
            },
            matcher = {
                frecency = true,
            },
            win = {
                input = {
                    keys = {
                        -- to close the picker on ESC instead of going to normal mode,
                        -- add the following keymap to your config
                        ["<Esc>"] = { "close", mode = { "n", "i" } },
                        -- I'm used to scrolling like this in LazyGit
                        -- ["J"] = { "preview_scroll_down", mode = { "i", "n" } },
                        -- ["K"] = { "preview_scroll_up", mode = { "i", "n" } },
                        -- ["H"] = { "preview_scroll_left", mode = { "i", "n" } },
                        -- ["L"] = { "preview_scroll_right", mode = { "i", "n" } },
                        ["<c-u>"] = { "preview_scroll_up", mode = { "i", "n" } },
                        ["<c-d>"] = { "preview_scroll_down", mode = { "i", "n" } },
                    },
                },
            },
            formatters = {
                file = {
                    filename_first = true, -- display filename before the file path
                    truncate = 80,
                },
            },
        },
        -- fullscreen lazygit
        lazygit = {
            enabled = true,
            theme = {
                selectedLineBgColor = { bg = "CursorLine" },
            },
            win = {
                width = 0,
                height = 0,
            },
        },
    },
}
