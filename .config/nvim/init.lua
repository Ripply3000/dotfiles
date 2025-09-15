local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)


-- 1) Make the Float highlights transparent
-- vim.cmd [[
--   highlight! NormalFloat guibg=NONE
--   highlight! FloatBorder guibg=NONE
-- ]]
--
-- -- 2) Define a custom highlight group for your menu selection
-- vim.api.nvim_set_hl(0, "BlinkCmpMenuSelection", {
--   bg = "NONE",
--   blend = 20,
--   bold = true,
-- })

require("core/options")
require("core/keymaps")
require("lazy").setup("plugins")

-- vim.api.nvim_set_hl(0, "Pmenu",      { bg = "NONE" })
-- vim.api.nvim_set_hl(0, "PmenuSel",   { bg = "NONE" })
-- vim.api.nvim_set_hl(0, "PmenuThumb", { bg = "NONE" })
-- vim.api.nvim_set_hl(0, "NormalFloat",{ bg = "NONE" })
-- vim.api.nvim_set_hl(0, "FloatBorder",{ bg = "NONE" })
--
vim.api.nvim_set_hl(0, "SnacksPicker",        { bg = "NONE" })
vim.api.nvim_set_hl(0, "SnacksPickerBorder",  { bg = "NONE" })  -- keep fg as your border color
-- (optional) if your theme paints float backgrounds:
vim.api.nvim_set_hl(0, "NormalFloat",         { bg = "NONE" })
vim.api.nvim_set_hl(0, "FloatBorder",         { bg = "NONE" })

-- local groups = {
--   "BlinkCmpMenu", "BlinkCmpMenuBorder", "BlinkCmpMenuSelection",
--   "BlinkCmpScrollBarThumb", "BlinkCmpScrollBarGutter",
--   "BlinkCmpLabel", "BlinkCmpLabelDeprecated", "BlinkCmpLabelMatch",
--   "BlinkCmpLabelDetail", "BlinkCmpLabelDescription",
--   "BlinkCmpKind", "BlinkCmpSource",
--   "BlinkCmpGhostText",
--   "BlinkCmpDoc", "BlinkCmpDocBorder", "BlinkCmpDocSeparator", "BlinkCmpDocCursorLine",
--   "BlinkCmpSignatureHelp", "BlinkCmpSignatureHelpBorder",
--   "BlinkCmpSignatureHelpActiveParameter",
-- }
--
-- for _, g in ipairs(groups) do
--   vim.api.nvim_set_hl(0, g, { bg = "NONE" })
-- end
