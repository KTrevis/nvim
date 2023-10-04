vim.opt.clipboard = "unnamedplus"
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.swapfile = false
vim.opt.number = true
vim.opt.relativenumber = true

vim.cmd.colorscheme("catppuccin")

vim.cmd("command Def lua vim.lsp.buf.definition()")
