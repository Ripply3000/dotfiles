vim.pack.add({
    {
        src = 'https://github.com/nvim-mini/mini.comment',
        version = vim.version.range('*')
    }
})
require('mini.comment').setup({})

-- vim.pack.add({
--     {
--         src = 'https://github.com/numToStr/Comment.nvim',
--         version = 'f527e8701e33814d03d51a536de9fa77d8d62ce2'
--     }
-- })
--
-- require('Comment').setup({})
