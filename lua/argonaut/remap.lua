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

-- ; eol hack... fight me
vim.keymap.set("n", "<leader>;", "$a;<Esc>")

-- C like todo comments
vim.keymap.set("n", "<leader>Otc", "O// TODO: (daniele) ")
vim.keymap.set("n", "<leader>otc", "o// TODO: (daniele) ")
vim.keymap.set("n", "<leader>itc", "i// TODO: (daniele) ")
-- Python like todo comments
vim.keymap.set("n", "<leader>Otp", "O# TODO: (daniele) ")
vim.keymap.set("n", "<leader>otp", "o# TODO: (daniele) ")
vim.keymap.set("n", "<leader>itp", "i# TODO: (daniele) ")

-- Save using CTRL+S
vim.keymap.set("n", "<C-s>", ":w<CR>")

-- buffer management
vim.keymap.set("n", "<A-l>", ":bn<CR>")
vim.keymap.set("n", "<A-h>", ":bp<CR>")
vim.keymap.set("n", "<A-w>", ":bp<bar>sp<bar>bn<bar>bd<CR>")
vim.keymap.set("n", "<A-q>", ":q<CR>")

-- window management
vim.keymap.set({"n", "t"}, "<C-l>", "<C-w>l")
vim.keymap.set({"n", "t"}, "<C-h>", "<C-w>h")
vim.keymap.set({"n", "t"}, "<C-j>", "<C-w>j")
vim.keymap.set({"n", "t"}, "<C-k>", "<C-w>k")

vim.keymap.set("n", "<C-Right>", "<C-w>>")
vim.keymap.set("n", "<C-Left>", "<C-w><")
vim.keymap.set("n", "<C-Up>", "<C-w>+")
vim.keymap.set("n", "<C-Down>", "<C-w>-")

vim.keymap.set("n", "<leader>C", ":Copilot<CR>")

-- Git
vim.keymap.set("n", "<leader>lg", ":LazyGit<CR>")

-- build
vim.keymap.set("n", "<leader>bb", ":make<CR>")
vim.keymap.set("n", "<leader>bs", ":silent make<CR>")
vim.keymap.set('n', '<leader>bf', function()
    local project = vim.fn.input('Enter project to build: ', '', 'shellcmd')
    vim.api.nvim_command('make ' .. project)
end)
vim.keymap.set("n", "<leader>cw", ":cwindow<CR>")
vim.keymap.set("n", "<leader>cn", ":cnext<CR>")
vim.keymap.set("n", "<leader>cp", ":cprev<CR>")
