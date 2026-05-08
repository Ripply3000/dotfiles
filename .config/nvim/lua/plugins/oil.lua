vim.pack.add({
    "https://github.com/stevearc/oil.nvim"
})

require("oil").setup({
    dependencies = { "nvim-tree/nvim-web-devicons" },
    default_file_explorer = true,
    columns = {
        "icon",
    },
    delete_to_trash = false,
    skip_confirm_for_simple_edits = true,
    experimental_watch_for_changes = true,
    view_options = {
        show_hidden = true,
        natural_order = true,
        is_always_hidden = function(name, _)
            return name == '..' or name == '.git'
        end,
        sort = {
            { "type", "asc" },
            { "name", "asc" },
        },
    },
})
