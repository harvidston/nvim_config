vim.opt.swapfile = false
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.backup = false
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.cmd 'set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz'
vim.cmd("colorscheme kanagawa")

--vim.opt.hlsearch = false
--vim.opt.incsearch = true

local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Exit from input mode
map('i', 'kk', '<Esc>')
map('i', 'лл', '<Esc>')
-- Save file changes
map('n', '<leader>s', ':w<CR>')
map('n', '<leader>ы', ':w<CR>')
-- Easy select all of file
map('n', '<leader>sa', 'ggVG<c-$>')
-- Move cursor to the end of the line
map('n', 'L', 'A')
map('n', 'Д', 'A')
-- Move cursor to the begining of the line
map('n', 'H', 'I')
map('n', 'Р', 'I')
-- Move cursor to the end of the file
map('n', 'F', 'G')
map('v', 'F', 'G')
-- Move cursor to the begining of the file
map('n', 'ff', 'gg')
map('v', 'ff', 'gg')
