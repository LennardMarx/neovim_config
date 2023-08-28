-- Tab to navigate buffers instead of [b and ]b
vim.api.nvim_set_keymap("n", "<S-Tab>", ":bprev<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Tab>", ":bnext<CR>", { noremap = true })

-- q to enter visual block mode as <c-v> is used by windows (?)
vim.api.nvim_set_keymap("n", "q", "<c-v>", { noremap = true })

-- always wrap text
-- vim.wo.wrap = false
