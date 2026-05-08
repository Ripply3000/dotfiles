vim.pack.add({
  "https://github.com/loctvl842/monokai-pro.nvim",
})

require("monokai-pro").setup({
    transparent_background = true,
    terminal_colors = true,
    devicons = true,
    styles = {
        comment = { italic = true },
        keyword = { italic = true },
        type = { italic = true },
        storageclass = { italic = true },
        structure = { italic = true },
        parameter = { italic = true },
        annotation = { italic = true },
        tag_attribute = { italic = true },
    },
    filter = "spectrum", -- classic | octagon | pro | machine | ristretto | spectrum
    day_night = {
        enable = false,
        day_filter = "pro",
        night_filter = "spectrum",
    },
    inc_search = "background", -- underline | background
    background_clear = {
        "toggleterm",
        "telescope",
        "renamer",
        "notify",
    },
    plugins = {
        bufferline = {
            underline_selected = false,
            underline_visible = false,
            underline_fill = false,
            bold = true,
        },
        indent_blankline = {
            context_highlight = "default", -- default | pro
            context_start_underline = false,
        },
    },
    override = function(scheme)
        return {}
    end,
    override_palette = function(filter)
        return {}
    end,
    override_scheme = function(scheme, palette, colors)
        return {}
    end,
})

vim.cmd.colorscheme("monokai-pro")

vim.api.nvim_set_hl(0, "BlinkCmpMenu",                { bg = "#191919" })
vim.api.nvim_set_hl(0, "BlinkCmpMenuBorder",           { bg = "#191919", fg = "#FCE566" })
vim.api.nvim_set_hl(0, "BlinkCmpDoc",                  { bg = "#191919" })
vim.api.nvim_set_hl(0, "BlinkCmpDocBorder",            { bg = "#191919", fg = "#FCE566" })
vim.api.nvim_set_hl(0, "BlinkCmpSignatureHelp",        { bg = "#191919" })
vim.api.nvim_set_hl(0, "BlinkCmpSignatureHelpBorder",  { bg = "#191919", fg = "#FCE566" })

vim.api.nvim_set_hl(0, "SnacksPickerInputBorder", { fg = "#FCE566" })
vim.api.nvim_set_hl(0, "SnacksPickerListBorder", { fg = "#FCE566" })
vim.api.nvim_set_hl(0, "SnacksPickerPreviewBorder", { fg = "#FCE566" })
