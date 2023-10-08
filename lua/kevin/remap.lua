vim.g.mapleader = " "

vim.keymap.set("v", "<S-Down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<S-Up>", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-s>", ":w<CR>")
vim.keymap.set("n", ";", ":")

vim.keymap.set("n", "<Leader>e", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<Leader>ff", ":Telescope find_files<CR>")
vim.keymap.set("n", "<Leader>fw", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<Leader>fc", ":Telescope current_buffer_fuzzy_find<CR>")
vim.keymap.set("n", "<Leader>fb", ":Telescope buffers<CR>")

vim.keymap.set("n", "<A-i>", ":FloatermToggle<CR>")
vim.keymap.set("t", "<A-i>", "<C-\\><C-n>:FloatermToggle<CR>")

vim.keymap.set("n", "<Leader>dd", vim.lsp.buf.hover)
vim.keymap.set("n", "<Leader>df", vim.lsp.buf.definition)
vim.keymap.set("n", "<Leader>er", vim.diagnostic.open_float)

vim.keymap.set("n", "<Leader>x", ":bd<CR>")
vim.keymap.set("n", "<Tab>", ":bnext<CR>")
