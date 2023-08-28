-- load VimTex configs
require "user.configs._vimtex_config"
-- require "user.configs"

------------------ vim-plug ------------------------
-- Install and configure plugins using vim-plug
vim.fn["plug#begin"](vim.fn.stdpath "data" .. "/plugged")

-- Add vimtex plugin
vim.fn["plug#"] "lervag/vimtex"

-- You can add more plugins here
vim.fn["plug#end"]()
