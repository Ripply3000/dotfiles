vim.pack.add({
	"http://github.com/folke/flash.nvim",
})

vim.keymap.set({"n", "x", "o"}, "s", function() require("flash").jump() end)
