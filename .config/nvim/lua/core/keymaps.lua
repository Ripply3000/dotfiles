vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- general key maps
keymap.set("i", "jk", "<ESC>")
-- keymap.set("v", "jk", "<ESC>")

-- clear search highlight
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- in normal mode, x deletes a single character without copying it into the registry
keymap.set("n", "x", '"_x"')
keymap.set("n", "<leader>+", "<C-a>")          -- increments numbers
keymap.set("n", "<leader>-", "<C-x>")          -- decrements numbers

keymap.set("n", "<leader>s|", "<C-w>v")        -- split window vertically
keymap.set("n", "<leader>s-", "<C-w>s")        -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=")        -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>")    -- close current split window

-- tabs
keymap.set("n", "<leader>to", ":tabnew<CR>")
keymap.set("n", "<leader>tx", ":tabclose<CR>")
keymap.set("n", "<leader>tn", ":tabn<CR>")
keymap.set("n", "<leader>tp", ":tabp<CR>")

-- always keep the cursor centered
keymap.set("n", "j", "jzz")
keymap.set("n", "k", "kzz")
keymap.set("n", "<C-d>", "<C-d>zz")

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- lazygit
keymap.set("n", "<leader>lg", ":LazyGit<CR>")

keymap.set("n", "<leader>ff", "<cmd>FzfLua files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>FzfLua live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fr", "<cmd>FzfLua registers<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>FzfLua buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>FzfLua helptags<cr>") -- list available help tags

-- buffer navigation
keymap.set("n", "<leader>bn", ":bnext<CR>")
keymap.set("n", "<leader>bp", ":bprev<CR>")
keymap.set("n", "<leader>bd", ":bd!<CR>")

-- oil nvim
keymap.set("n", "-", "<CMD>Oil<CR>", {desc = "Open parent directory"})

-- zen mode
keymap.set("n", "<leader>zm", ":ZenMode<CR>")

-- obsidian
keymap.set("n", "<leader>no", ":ObsidianOpen<CR>") -- open note in obsidian
keymap.set("n", "<leader>n|", ":ObsidianFollowLink vsplit<CR>")
keymap.set("n", "<leader>n-", ":ObsidianFollowLink hsplit<CR>")
keymap.set("n", "<leader>nd", ":ObsidianDailies -30 5<CR>")
keymap.set("n", "<leader>nt", ":ObsidianTemplate<CR>")
