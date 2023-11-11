return {
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("neorg").setup {
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                notes = "~/notes",
              },
            },
          },
        },
      }
    end,
  },
}
-- return {
--   {
--     "rebelot/kanagawa.nvim", -- neorg needs a colorscheme with treesitter support
--     {
--       "nvim-treesitter/nvim-treesitter",
--       build = ":TSUpdate",
--       opts = {
--         highlight = { enable = true },
--       },
--       config = function(_, opts) require("nvim-treesitter.configs").setup(opts) end,
--     },
--     {
--       "nvim-neorg/neorg",
--       build = ":Neorg sync-parsers",
--       dependencies = { "nvim-lua/plenary.nvim" },
--       config = function()
--         require("neorg").setup {
--           load = {
--             ["core.defaults"] = {},
--             ["core.concealer"] = {},
--             ["core.dirman"] = {
--               config = {
--                 workspaces = {
--                   notes = "~/notes",
--                 },
--                 default_workspace = "notes",
--               },
--             },
--           },
--         }
--
--         vim.wo.foldlevel = 99
--         vim.wo.conceallevel = 2
--       end,
--     },
--   },
--   vim.cmd.colorscheme "kanagawa",
-- }
