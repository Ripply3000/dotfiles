vim.filetype.add({
  extension = {
    tf = "terraform",
  },
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "yaml" },
  callback = function(args)
    local line_count = vim.api.nvim_buf_line_count(args.buf)
    local max_lines = math.min(line_count, 200)
    local lines = vim.api.nvim_buf_get_lines(args.buf, 0, max_lines, false)
    local content = table.concat(lines, "\n")

    if content:find("{{") or content:find("{%%") or content:find("%%}") then
      vim.bo[args.buf].filetype = "helm"
    end
  end,
})
