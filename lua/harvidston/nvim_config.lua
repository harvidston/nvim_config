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

map('i', 'kk', '<Esc>')
map('n', '<leader>s', ':w<CR>')
-- Easy select all of file
map('n', '<leader>sa', 'ggVG<c-$>')
