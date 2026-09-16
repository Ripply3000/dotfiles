vim.pack.add({
    "https://github.com/shatur/neovim-ayu"
})

require('ayu').setup({
    mirage = false, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
    terminal = true, -- Set to `false` to let terminal manage its own colors.
    -- overrides = {}, -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
    overrides = {
        Normal = { bg = "None" },
        NormalFloat = { bg = "none" },
        ColorColumn = { bg = "None" },
        SignColumn = { bg = "None" },
        Folded = { bg = "None" },
        FoldColumn = { bg = "None" },
        CursorLine = { bg = "None" },
        CursorColumn = { bg = "None" },
        VertSplit = { bg = "None" },
    },
})

vim.cmd("colorscheme ayu")

vim.api.nvim_set_hl(0, "LineNr", { fg = "#5eacd3" })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ffd700", bold = true })
