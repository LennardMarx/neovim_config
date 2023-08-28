if vim.loader and vim.fn.has "nvim-0.9.1" == 1 then vim.loader.enable() end

for _, source in ipairs {
  "astronvim.bootstrap",
  "astronvim.options",
  "astronvim.lazy",
  "astronvim.autocmds",
  "astronvim.mappings",
} do
  local status_ok, fault = pcall(require, source)
  if not status_ok then vim.api.nvim_err_writeln("Failed to load " .. source .. "\n\n" .. fault) end
end

if astronvim.default_colorscheme then
  if not pcall(vim.cmd.colorscheme, astronvim.default_colorscheme) then
    require("astronvim.utils").notify(
      ("Error setting up colorscheme: `%s`"):format(astronvim.default_colorscheme),
      vim.log.levels.ERROR
    )
  end
end

require("astronvim.utils").conditional_func(astronvim.user_opts("polish", nil, false), true)

---------------------- Added myself!!! ---------------------

require "plugins.configs._gruvbox_config"
require "user._keybindings"

------------------ vim-plug ------------------------

-- -- Configure vim-plug and install plugins
-- vim.fn["plug#begin"](vim.fn.stdpath "data" .. "/plugged")
--
-- -- Add vimtex plugin
-- vim.fn["plug#"] "lervag/vimtex"
--
-- -- You can add more plugins here
-- vim.fn["plug#end"]()

--------------------- VimTex config ----------------------------
-- Set filetype-related settings
vim.cmd "filetype plugin indent on"

-- Enable syntax highlighting
vim.cmd "syntax enable"

-- Configure viewer options
-- vim.g.vimtex_view_method = "mupdf" -- Built-in viewer method
-- OR
-- vim.g.vimtex_view_general_viewer = "okular" -- Generic interface
-- vim.g.vimtex_view_general_viewer = "mupdf" -- Generic interface
-- vim.g.vimtex_view_general_options = "--unique file:@pdf\\#src:@line@tex"
vim.g.vimtex_view_general_viewer = "C:/Users/lmarx/AppData/Local/SumatraPDF/SumatraPDF.exe"
vim.g.vimtex_view_general_options = "-reuse-instance -forward-search @tex @line @pdf"

-- Configure the compiler backend
-- vim.g.vimtex_compiler_method = "latexmk"

-- Set localleader
vim.g.maplocalleader = ","

-- Install and configure plugins using vim-plug
vim.fn["plug#begin"](vim.fn.stdpath "data" .. "/plugged")

-- Add vimtex plugin
vim.fn["plug#"] "lervag/vimtex"

-- You can add more plugins here

vim.fn["plug#end"]()
