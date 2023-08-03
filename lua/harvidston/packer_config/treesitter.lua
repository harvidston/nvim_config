local status, ts = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

ts.setup {
	highlight = {
		enable = true, 
		disable = {}, 
	},
	indent = {
		enable = false,
		disable = {},
	},
	ensure_installed = {
		'tsx',
		'lua',
		'json',
	}
}
vim.api.nvim_set_hl(0, "@punctuation", { link = "Identifier" })
vim.api.nvim_set_hl(0, "@function", { link = "Identifier" })
