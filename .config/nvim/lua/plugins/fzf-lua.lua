return {
	"ibhagwan/fzf-lua",
	-- optional for icon support
	dependencies = { "nvim-tree/nvim-web-devicons" },
	-- or if using mini.icons/mini.nvim
	-- dependencies = { "echasnovski/mini.icons" },
	config = function()
		require("fzf-lua").setup({
			debug = false,
			files = {
				git_defer = false, -- always use fd, not git ls-files
				fd_opts = [[--color=never --type f --hidden --follow \
				  --exclude .git --exclude node_modules --exclude vendor \
				  --exclude build --exclude storage]],
			},

			grep = {
				rg_opts = [[--column --line-number --no-heading --color=always --smart-case --hidden --follow \
              --glob '!node_modules/**' --glob '!vendor/**' --glob '!.git/**' \
              --glob '!build/**' --glob '!storage/**']],
			},

			lsp = {
				code_actions = {
					previewer = "codeaction_native",
					preview_pager = "delta --side-by-side --width=$FZF_PREVIEW_COLUMNS",
				},
			},
		})
	end,
}
