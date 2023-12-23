-- return {
--   {
--     "nvim-neorg/neorg",
--     build = ":Neorg sync-parsers",
--     dependencies = { "nvim-lua/plenary.nvim" },
--     config = function()
--       require("neorg").setup {
--         load = {
--           ["core.defaults"] = {}, -- Loads default behaviour
--           ["core.concealer"] = {}, -- Adds pretty icons to your documents
--           ["core.dirman"] = { -- Manages Neorg workspaces
--             config = {
--               workspaces = {
--                 notes = "~/notes",
--               },
--             },
--           },
--         },
--       }
--     end,
--   },
-- }


return {
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    priority = 1000,
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("neorg").setup {
        load = {
          ["core.defaults"] = {
            config = {
              create_todo_items = true,
            },
          }, -- Loads default behaviour
          ["core.concealer"] = {
            config = {
              icon_preset = "basic",
            },
          }, -- Adds pretty icons to your documents
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                -- notes = "~/notes/notes",
                notes = "~/Misc/notes/",
                journal = "~/notes/journal",
              },
            },
          },
          ["core.keybinds"] = {
            config = {
              -- default_keybinds = false,
              hook = function(keybinds)
                -- <C-Space> not working for some reason
                keybinds.remap_key("norg", "n", "<C-Space>", "<C-z>")
                -- keybinds.remap_event("norg", "n", "<leader>c", "core.qol.toc")
              end,
            },
          },
          ["core.summary"] = {},
          -- ["core.tempus"] = {},
        },
      }
      vim.wo.foldlevel = 99
      vim.wo.conceallevel = 2
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
