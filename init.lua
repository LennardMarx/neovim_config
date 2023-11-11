

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

require 'nvim-treesitter.install'.compilers = { "clang" }


require "plugins.configs._gruvbox_config"
require "user._keybindings"
require "user._vim-plug"
-- local function write_server_name()
--   local nvim_server_file = vim.fn.has('win32') == 1 and vim.fn.expand('$TEMP') or '/tmp'
--   nvim_server_file = nvim_server_file .. '/vimtexserver.txt'
--   vim.fn.writefile({vim.fn.servername()}, nvim_server_file)
-- end

-- vim.api.nvim_exec([[
-- augroup vimtex_common
--   autocmd!
--   autocmd FileType tex lua write_server_name()
-- augroup END
-- ]], true)
-- adapted from https://github.com/folke/lazy.nvim#-installation

-- local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
-- if not vim.loop.fs_stat(lazypath) then
--   print(vim.fn.system {
--     "git",
--     "clone",
--     "--filter=blob:none",
--     "https://github.com/folke/lazy.nvim.git",
--     "--branch=stable",
--     lazypath,
--   })
-- end
-- vim.opt.rtp:prepend(lazypath)
--
-- vim.g.mapleader = " "
--
-- require("lazy").setup {
--   -- "rebelot/kanagawa.nvim", -- neorg needs a colorscheme with treesitter support
--   {
--     "nvim-treesitter/nvim-treesitter",
--     build = ":TSUpdate",
--     opts = {
--       highlight = { enable = true },
--     },
--     config = function(_, opts) require("nvim-treesitter.configs").setup(opts) end,
--   },
--   {
--     "nvim-neorg/neorg",
--     build = ":Neorg sync-parsers",
--     dependencies = { "nvim-lua/plenary.nvim" },
--     config = function()
--       require("neorg").setup {
--         load = {
--           ["core.defaults"] = {},
--           ["core.concealer"] = {},
--           ["core.dirman"] = {
--             config = {
--               workspaces = {
--                 notes = "~/notes",
--               },
--               default_workspace = "notes",
--             },
--           },
--         },
--       }
--
--       vim.wo.foldlevel = 99
--       vim.wo.conceallevel = 2
--     end,
--   },
-- }

-- vim.cmd.colorscheme "kanagawa"
