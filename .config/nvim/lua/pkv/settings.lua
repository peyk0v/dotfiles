vim.g.python3_host_prog = "/usr/bin/python3"

vim.g.mapleader = " "

vim.opt.relativenumber = true

vim.opt.cursorline = true

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

vim.api.nvim_create_autocmd("Filetype", {
	pattern = "js,ts,lua",
	command = "setlocal tabstop=2 shiftwidth=2 softtabstop=2"
})

--vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

-- this is to end a new line at the end of the file
-- so it doesn't detect as a git change
--vim.cmd("set binary")
--vim.cmd("set noeol")