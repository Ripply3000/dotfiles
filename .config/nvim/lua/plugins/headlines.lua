return {
	"lukas-reineke/headlines.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		-- Define custom highlight groups using Vimscript
		vim.cmd([[highlight Headline1 guibg=#ffbf00 guifg=#ffbf00]])
		vim.cmd([[highlight Headline2 guibg=#ffbf00 guifg=#ffbf00]])
		vim.cmd([[highlight Headline3 guibg=#ffbf00 guifg=#ffbf00]])
		vim.cmd([[highlight Headline4 guibg=#ffbf00 guifg=#ffbf00]])
		vim.cmd([[highlight Headline5 guibg=#ffbf00 guifg=#ffbf00]])
		vim.cmd([[highlight Headline6 guibg=#ffbf00 guifg=#ffbf00]])
		-- Defines the codeblock background color to something darker
		vim.cmd([[highlight CodeBlock guibg=#48413D]])
		-- When you add a line of dashes with --- this specifies the color, I'm not
		-- adding a "guibg" but you can do so if you want to add a background color
		vim.cmd([[highlight Dash guifg=#C0C0C0 gui=bold]])

		-- Setup headlines.nvim with the newly defined highlight groups
		require("headlines").setup({
			markdown = {
				-- query = vim.treesitter.query.parse(
				-- 	"markdown",
				-- 	[[
				--             (atx_heading [
				--                 (atx_h1_marker)
				--                 (atx_h2_marker)
				--                 (atx_h3_marker)
				--                 (atx_h4_marker)
				--                 (atx_h5_marker)
				--                 (atx_h6_marker)
				--             ] @headline)
				--
				--             (thematic_break) @dash
				--
				--             (fenced_code_block) @codeblock
				--
				--             (block_quote_marker) @quote
				--             (block_quote (paragraph (inline (block_continuation) @quote)))
				--             (block_quote (paragraph (block_continuation) @quote))
				--             (block_quote (block_continuation) @quote)
				--         ]]
				-- ),
				headline_highlights = { "Headline" },
				bullet_highlights = {
					"@text.title.1.marker.markdown",
					"@text.title.2.marker.markdown",
					"@text.title.3.marker.markdown",
					"@text.title.4.marker.markdown",
					"@text.title.5.marker.markdown",
					"@text.title.6.marker.markdown",
				},
				-- bullets = { "◉", "○", "✸", "✿" },
				-- bullets = { "󰉫", "2", "3", "4", "5", "6" },
				bullets = { "1", "2", "3", "4", "5", "6" },
				codeblock_highlight = "CodeBlock",
				dash_highlight = "Dash",
				dash_string = "-",
				quote_highlight = "Quote",
				quote_string = "┃",
				fat_headlines = false,
				-- fat_headline_upper_string = "▃",
				-- fat_headline_lower_string = "🬂",
			},
		})
	end,
}
