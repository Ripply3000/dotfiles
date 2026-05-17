require('vim._core.ui2').enable()

require("core.options")
require("core.keymaps")
require("core.functionalities")
require("config.filetypes")

vim.pack.add({
    "https://github.com/nvim-lua/plenary.nvim"
})

-- Plugins --
require("plugins.oil")
require("plugins.autopairs")
require("plugins.surround")
require("plugins.comfy-line-numbers")
require("plugins.comment")
require("plugins.flash")
require("plugins.lualine")
require("plugins.outline")
require("plugins.render-markdown")
require("plugins.tmux-navigation")
require("plugins.lsp")
require("plugins.blink-cmp")
require("plugins.which-key")
require("plugins.gitsigns")
require("plugins.fugitive")
require("plugins.vim-table-mode")

require("plugins.trouble")
require("plugins.treesitter")
require("plugins.quicker")

require("plugins.bullets")
require("plugins.snacks")
require("plugins.opencode")
require("plugins.obsidian-new")

require("plugins.colorscheme.ayu")

-- FUN
-- require("plugins.smear_cursor")
