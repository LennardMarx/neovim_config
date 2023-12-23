--------------------- VimTex config ----------------------------
-- Set filetype-related settings
vim.cmd "filetype plugin indent on"

-- Enable syntax highlighting
vim.cmd "syntax enable"

-- Configure viewer options
-- vim.g.vimtex_view_method = "mupdf" -- Built-in viewer method

-- using SumatraPDF
-- vim.g.vimtex_view_general_viewer = "C:/Users/lmarx/AppData/Local/SumatraPDF/SumatraPDF.exe"
vim.g.vimtex_view_general_viewer = ""
vim.g.vimtex_view_general_options = "-reuse-instance -forward-search @tex @line @pdf"

-- trying to use mupdf (not working)
-- vim.g.vimtex_view_general_viewer = " C:/Users/lmarx/Downloads/mupdf-1.23.0-windows/mupdf-1.23.0-windows/mupdf.exe"
-- vim.g.vimtex_view_general_options = "--unique file:@pdf\\#src:@line@tex"

-- vim.g.vimtex_view_general_viewer = " C:/Users/lmarx/Downloads/mupdf-1.23.0-windows/mupdf-1.23.0-windows/mupdf.exe"
-- vim.g.vimtex_view_general_options = "-reuse-instance -forward-search @tex @line @pdf"

-- Configure the compiler backend (latexmk is default)
-- vim.g.vimtex_compiler_method = "latexmk"

-- Set localleader
vim.g.maplocalleader = ","
