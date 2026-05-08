vim.pack.add({
    "https://github.com/maxmx03/solarized.nvim"
})

vim.o.termguicolors = true
vim.o.background = 'dark'
require('solarized').setup({})
vim.cmd.colorscheme 'solarized'

vim.api.nvim_set_hl(0, "BlinkCmpMenu",                { bg = "#012B36" })
vim.api.nvim_set_hl(0, "BlinkCmpMenuBorder",           { bg = "#012B36", fg = "#FCE566" })
vim.api.nvim_set_hl(0, "BlinkCmpDoc",                  { bg = "#012B36" })
vim.api.nvim_set_hl(0, "BlinkCmpDocBorder",            { bg = "#012B36", fg = "#FCE566" })
vim.api.nvim_set_hl(0, "BlinkCmpSignatureHelp",        { bg = "#012B36" })
vim.api.nvim_set_hl(0, "BlinkCmpSignatureHelpBorder",  { bg = "#012B36", fg = "#FCE566" })

