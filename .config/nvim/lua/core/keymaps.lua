vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- general key maps
keymap.set("i", "jk", "<ESC>")
-- keymap.set("v", "jk", "<ESC>")

-- clear search highlight
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- in normal mode, x deletes a single character without copying it into the registry
keymap.set("n", "x", '"_x"')
keymap.set("n", "<leader>+", "<C-a>") -- increments numbers
keymap.set("n", "<leader>-", "<C-x>") -- decrements numbers

keymap.set("n", "<leader>s|", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>s-", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- tabs
keymap.set("n", "<leader>to", ":tabnew<CR>")
keymap.set("n", "<leader>tx", ":tabclose<CR>")
keymap.set("n", "<leader>tn", ":tabn<CR>")
keymap.set("n", "<leader>tp", ":tabp<CR>")

-- quickfix
keymap.set("n", "<leader>cc", ":cclose<CR>")
keymap.set("n", "<leader>cn", ":cnext<CR>")
keymap.set("n", "<leader>cp", ":cprev<CR>")

-- always keep the cursor centered
keymap.set("n", "j", "gj")
keymap.set("n", "k", "gk")

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- buffers
keymap.set("n", "<leader>bn", ":bnext<CR>")
keymap.set("n", "<leader>bp", ":bprev<CR>")
keymap.set("n", "<leader>bd", ":bd!<CR>")
keymap.set("n", "<leader>bfd", ":bufdo bd<CR>")

-- obsidian
keymap.set("n", "<leader>no", ":ObsidianOpen<CR>") -- open note in obsidian
keymap.set("n", "<leader>n|", ":ObsidianFollowLink vsplit<CR>")
keymap.set("n", "<leader>n-", ":ObsidianFollowLink hsplit<CR>")
keymap.set("n", "<leader>nd", ":Obsidian dailies -30 5<CR>")
keymap.set("n", "<leader>nt", ":Obsidian new_from_template<CR>")

keymap.set({"n", "v"}, "<leader>cgn", function()
    vim.api.nvim_feedkeys(
        vim.api.nvim_replace_termcodes("*Ncgn", true, false, true),
        "n",
        false
    )
end)

-- Change <A-j> to <M-j> and <A-k> to <M-k>
vim.keymap.set('n', '<M-j>', ':m .+1<CR>==', { desc = 'Move line down' })
vim.keymap.set('n', '<M-k>', ':m .-2<CR>==', { desc = 'Move line up' })

vim.keymap.set('v', '<M-j>', ":m '>+1<CR>gv=gv", { desc = 'Move selection down' })
vim.keymap.set('v', '<M-k>', ":m '<-2<CR>gv=gv", { desc = 'Move selection up' })
