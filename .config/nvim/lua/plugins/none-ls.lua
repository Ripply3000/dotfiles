vim.pack.add({
	"https://github.com/nvimtools/none-ls.nvim",
})

local null_ls = require("null-ls");

require("null-ls").setup({
    sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettierd,
        --null_ls.builtins.formatting.blade,
    },
})

vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
