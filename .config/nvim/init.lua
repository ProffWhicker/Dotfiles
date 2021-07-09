-- load all plugins
require "pluginList"
require "config"
require "top-bufferline"

require("neoscroll").setup() -- smooth scroll

-- lsp stuff

local cmd = vim.cmd
local g = vim.g

g.mapleader = " "

-- colorscheme related stuff
cmd "syntax on"
vim.o.background = "dark" -- or "light" for light mode
vim.api.nvim_command([[
if has('termguicolors')
   set termguicolors
endif
colorscheme gruvbox-material
hi Normal guibg=none
]])

-- blankline

g.indentLine_enabled = 1
g.indent_blankline_char = "▏"

g.indent_blankline_filetype_exclude = {"help", "terminal"}
g.indent_blankline_buftype_exclude = {"terminal"}

g.indent_blankline_show_trailing_blankline_indent = false
g.indent_blankline_show_first_indent_level = false

require "mappings"

require "telescope-nvim"
require "nvimTree" -- file tree stuff
-- require "file-icons"

-- git signs , lsp symbols etc
require "gitsigns-nvim"
require("nvim-autopairs").setup()

-- hide line numbers in terminal windows
vim.api.nvim_exec([[
   au BufEnter term://* setlocal nonumber
]], false)
