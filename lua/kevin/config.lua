vim.opt.clipboard = "unnamedplus"
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.swapfile = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.hlsearch = false

-- makes enter in insert mode when opening terminal automatically
vim.cmd("autocmd BufWinEnter,WinEnter term://* startinsert")
vim.cmd.colorscheme("catppuccin")

