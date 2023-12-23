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

-- ========= Neorg ===========

-- Keymap to open Neorg workspace.
vim.api.nvim_set_keymap("n", "<leader>,wn", [[<cmd>Neorg workspace notes<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>,wj", [[<cmd>Neorg workspace journal<CR>]], { noremap = true, silent = true })
-- Toggle concealer
vim.api.nvim_set_keymap("n", "<leader>,c", [[<cmd>Neorg toggle-concealer<CR>]], { noremap = true, silent = true })
-- Table of contents
vim.api.nvim_set_keymap("n", "<leader>,t", [[<cmd>Neorg toc<CR>]], { noremap = true, silent = true })
-- Wrap Text
vim.api.nvim_set_keymap("n", "<leader>,z", [[<cmd>set wrap<CR>]], { noremap = true, silent = true })

-- Naming the keybinding for the menu (folke/which-key.nvim)
require("which-key").register {
  ["<leader>,"] = { "Neorg" },
  ["<leader>,c"] = { "Toggle concealer" },
  ["<leader>,t"] = { "Table of contents" },
  ["<leader>,z"] = { "Wrap text" },
  ["<leader>,w"] = { "Workspaces" },
  ["<leader>,wn"] = { "Notes" },
  ["<leader>,wj"] = { "Journal" },
}
