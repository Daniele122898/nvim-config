vim.g.mapleader = " "
--vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)

-- Allow for moving highlighted lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- When using J the cursor will stay in place
vim.keymap.set("n", "J", "mzJ`z")

-- When moving half page keep cursor at one point
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Better pasting, when pasting over highlighted text you keep your copy
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Allow yanking to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete to void register
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")

-- replace word you're currently on
vim.keymap.set("n", "<leader>wr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- buffer management
vim.keymap.set("n", "<A-l>", ":bn<CR>")
vim.keymap.set("n", "<A-h>", ":bp<CR>")
vim.keymap.set("n", "<A-w>", ":bd<CR>")

-- window management
vim.keymap.set({"n", "t"}, "<C-l>", "<C-w>l")
vim.keymap.set({"n", "t"}, "<C-h>", "<C-w>h")
vim.keymap.set({"n", "t"}, "<C-j>", "<C-w>j")
vim.keymap.set({"n", "t"}, "<C-k>", "<C-w>k")
