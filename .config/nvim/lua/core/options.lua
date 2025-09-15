local opt = vim.opt

-- guicursor
opt.guicursor = ""

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = false

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = false

-- appearance
opt.termguicolors = true
-- opt.pumblend = 20 -- transparency for popup menu only
-- opt.winblend = 10 -- transparency for all other floating windows

opt.winborder = "single"

--opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")

-- check later
opt.mouse = "a"

-- disable motion skip for - and _
opt.iskeyword:remove("-")
opt.iskeyword:remove("_")

opt.winborder = "rounded"

vim.opt.conceallevel = 2
