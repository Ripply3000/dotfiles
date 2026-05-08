vim.pack.add({
    "https://github.com/xero/miasma.nvim"
})

vim.cmd("colorscheme miasma")
vim.cmd("hi markdownItalic gui=italic")
vim.cmd("hi htmlItalic gui=italic")
vim.cmd("hi htmlBoldItalic gui=bold,italic")

vim.api.nvim_set_hl(0, "Normal", { bg = "#191919" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#191919" })
