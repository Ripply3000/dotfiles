-- return {
-- 	"ellisonleao/gruvbox.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		require("gruvbox").setup({
-- 			terminal_colors = true, -- add neovim terminal colors
-- 			undercurl = true,
-- 			underline = true,
-- 			bold = true,
-- 			italic = {
-- 				strings = true,
-- 				emphasis = true,
-- 				comments = true,
-- 				operators = false,
-- 				folds = true,
-- 			},
-- 			strikethrough = true,
-- 			invert_selection = false,
-- 			invert_signs = false,
-- 			invert_tabline = false,
-- 			invert_intend_guides = false,
-- 			inverse = true, -- invert background for search, diffs, statuslines and errors
-- 			contrast = "hard", -- can be "hard", "soft" or empty string
-- 			palette_overrides = {},
-- 			overrides = {},
-- 			dim_inactive = false,
-- 			transparent_mode = false,
-- 		})
-- 		vim.cmd("colorscheme gruvbox")
-- 	end,
-- }

-- return {
--     "nyoom-engineering/oxocarbon.nvim",
--     config = function()
--         vim.opt.background = "dark" -- set this to dark or light
--         vim.cmd.colorscheme "oxocarbon"
--
--         vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--         vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--     end
-- }

-- return {
--     "srcery-colors/srcery-vim",
--     config = function()
--         -- vim.g.srcery_bg_passthrough = 1
--         vim.g.srcery_bg = {"None", "None"}
--         vim.g.srcery_italic = 1
--         vim.cmd.colorscheme("srcery")
--     end,
-- }

-- return {
--     'rebelot/kanagawa.nvim',
--     config = function()
--         -- require('kanagawa').setup({
--             -- transparent = true
--         -- })
--         vim.cmd.colorscheme('kanagawa-wave')
--     end,
-- }

return {
   'AlexvZyl/nordic.nvim',
   lazy = false,
   priority = 1000,
   config = function()
       require('nordic').load()
   end
}
