require("nvim-tree").setup()

vim.keymap.set("n", "<leader>fe", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>ft", ":NvimTreeFindFile<CR>")
