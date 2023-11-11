-- Tab to navigate buffers instead of [b and ]b
vim.api.nvim_set_keymap("n", "<S-Tab>", ":bprev<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Tab>", ":bnext<CR>", { noremap = true })

-- q to enter visual block mode as <c-v> is used by windows (?)
vim.api.nvim_set_keymap("n", "q", "<c-v>", { noremap = true })

-- ':set wrap' for specific filetypes
local enable_wrap_filetypes = { "tex", "markdown", "text", "mail" }

for _, filetype in ipairs(enable_wrap_filetypes) do
  vim.api.nvim_exec([[
    autocmd FileType ]] .. filetype .. [[ setlocal wrap
  ]], false)
end
