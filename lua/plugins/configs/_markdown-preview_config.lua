-- Set options for markdown-preview.nvim
vim.g.mkdp_auto_start = 0
vim.g.mkdp_auto_close = 1
vim.g.mkdp_refresh_slow = 0
vim.g.mkdp_command_for_global = 0
vim.g.mkdp_open_to_the_world = 0
vim.g.mkdp_open_ip = ""
vim.g.mkdp_browser = ""
vim.g.mkdp_echo_preview_url = 0
vim.g.mkdp_browserfunc = ""

-- Configure markdown rendering options
vim.g.mkdp_preview_options = {
  mkit = {},
  katex = {},
  uml = {},
  maid = {},
  disable_sync_scroll = 0,
  sync_scroll_type = "middle",
  hide_yaml_meta = 1,
  sequence_diagrams = {},
  flowchart_diagrams = {},
  content_editable = true,
  disable_filename = 0,
  toc = {},
}

-- Specify custom CSS files for styling
vim.g.mkdp_markdown_css = ""
vim.g.mkdp_highlight_css = ""

-- Set a custom port for the server or use random
vim.g.mkdp_port = ""

-- Set preview page title
vim.g.mkdp_page_title = "Markdown Preview: 「${name}」"

-- Define recognized filetypes
vim.g.mkdp_filetypes = { "markdown" }

-- Set the default theme (dark or light)
vim.g.mkdp_theme = "light"
