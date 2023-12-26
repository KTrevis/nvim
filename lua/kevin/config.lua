vim.opt.clipboard = "unnamedplus"
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.swapfile = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.hlsearch = false

vim.cmd.colorscheme("catppuccin")

vim.cmd("command Def lua vim.lsp.buf.definition()")
