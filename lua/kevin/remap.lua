vim.g.mapleader = " "

vim.keymap.set("v", "<S-J>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<S-K>", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-s>", ":w<CR>")
vim.keymap.set("n", ";", ":")

vim.keymap.set("n", "<Leader>t", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<Leader>ff", ":Telescope find_files<CR>")
vim.keymap.set("n", "<Leader>fg", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<Leader>fc", ":Telescope current_buffer_fuzzy_find<CR>")
vim.keymap.set("n", "<Leader>fb", ":Telescope buffers<CR>")

vim.keymap.set("n", "<A-i>", ":FloatermToggle<CR>")
vim.keymap.set("t", "<A-i>", "<C-\\><C-n>:FloatermToggle<CR>")
vim.keymap.set("t", "<A-n>", "norminette<CR>")

vim.keymap.set("n", "<Leader>fh", vim.lsp.buf.hover)
vim.keymap.set("n", "<Leader>fd", vim.lsp.buf.definition)
vim.keymap.set("n", "<Leader>er", vim.diagnostic.open_float)

vim.keymap.set("n", "<Leader>x", ":bd<CR>")
vim.keymap.set("n", "<Tab>", ":bnext<CR>")
