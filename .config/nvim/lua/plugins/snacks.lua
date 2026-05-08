vim.pack.add({
	"https://github.com/folke/snacks.nvim",
})

require("snacks").setup({
	---@type snacks.Config
    bigfile = { enabled = true },
    picker = {
        enabled = true,
        ui_select = true,
        layout = {
            -- preset = "ivy",
            preset = "ivy_adjusted",
            -- position = "bottom",
            -- preset = "default_adjusted",
            -- cycle = true,
            -- fullscreen = true,
        },
        layouts = {
            ivy_adjusted = {
                layout = {
                    box = "vertical",
                    backdrop = false,
                    row = -1,
                    width = 0,
                    height = 0.6,
                    border = "top",
                    title = " {title} {live} {flags}",
                    title_pos = "left",
                    { win = "input", height = 1, border = "rounded" },
                    {
                        box = "horizontal",
                        { win = "list", border = "rounded" },
                        { win = "preview", title = "{preview}", width = 0.5, border = "rounded" },
                    },
                },
            },
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
                        { win = "input", height = 1, border = "rounded" },
                        { win = "list", border = "rounded" },
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
        -- theme = {
            -- 	selectedLineBgColor = { bg = "CursorLine" },
            -- },
            win = {
                width = 0,
                height = 0,
            },
        },
        zen = {
            zoom = {
                toggles = {},
                center = true,
                show = { statusline = true, tabline = true },
                win = {
                    backdrop = false,
                    width = 0, -- full width
                },
            },
        },
        -- theme_path = "~/.config/lazygit/config.yml",
    }
)

vim.keymap.set("n", "<leader>lg", function() Snacks.lazygit() end)
vim.keymap.set("n", "<leader>ff", function() Snacks.picker.files() end)
vim.keymap.set("n", "<leader>fs", function() Snacks.picker.grep() end)
vim.keymap.set("n", "<leader>fb", function() Snacks.picker.buffers() end)
vim.keymap.set("n", "<leader>fh", function() Snacks.picker.help() end)
vim.keymap.set("n", "<leader>fr", function() Snacks.picker.registers() end)
vim.keymap.set("n", "<leader>zm", function() Snacks.zen() end)


    -- keys = {
        -- 	{ "<leader>lg", function() Snacks.lazygit() end, desc = "Lazygit", },
        -- 	{
            -- 		"<leader>fb",
            -- 		desc = "Buffers",
            -- 	},
            -- 	{
                -- 		"<leader>ff",
                -- 		function()
                    -- 			Snacks.picker.files()
                    -- 		end,
                    -- 		desc = "Find Files",
                    -- 	},
                    -- 	{
                        -- 		"<leader>fs",
                        -- 		function()
                            -- 			Snacks.picker.grep()
                            -- 		end,
                            -- 		desc = "Grep",
                            -- 	},
                            -- 	{
                                -- 		"<leader>fr",
                                -- 		function()
                                    -- 			Snacks.picker.registers()
                                    -- 		end,
                                    -- 		desc = "Registers",
                                    -- 	},
                                    -- 	{
                                        -- 		"<leader>fh",
                                        -- 		function()
                                            -- 			Snacks.picker.help()
                                            -- 		end,
                                            -- 		desc = "Help Pages",
                                            -- 	},
                                            -- 	{
                                                -- 		"<leader>fo",
                                                -- 		function()
                                                    -- 			Snacks.picker.grep_buffers()
                                                    -- 		end,
                                                    -- 		desc = "Grep Open Buffers",
                                                    -- 	},
                                                    -- 	{
                                                        -- 		"<leader>zm",
                                                        -- 		function()
                                                            -- 			Snacks.zen()
                                                            -- 		end,
                                                            -- 		desc = "Grep Open Buffers",
                                                            -- 	},
                                                            -- 	-- {
                                                                -- 	--     "<leader>ca",
                                                                -- 	--     function()
                                                                    -- 	--         vim.lsp.buf.code_action
                                                                    -- 	--     end,
                                                                    -- 	--     desc = "LSP Code Action",
                                                                    -- 	-- },
                                                                    -- },
