local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local opt = {}

-- Nvim Bufferline
map("n", "<TAB>", [[ <CMD> BufferLineMoveNext<CR>]], opt)

-- Nvim Tree
map("n", "<C-b>", [[ <CMD> NvimTreeToggle<CR>]], opt)

-- Telescope.nvim
map("n", "<C-t>", [[ <CMD> Telescope live_grep<CR>]], opt)

-- True Zone
map("n", "<C-f>", [[ <Cmd> TZAtaraxis<CR>]], opt)
