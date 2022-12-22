vim.keymap.set({"n", "t"}, "<leader>tf", function () require("nvterm.terminal").toggle "float" end)
vim.keymap.set({"n", "t"}, "<leader>tv", function () require("nvterm.terminal").toggle "vertical" end)
vim.keymap.set({"n", "t"}, "<leader>th", function () require("nvterm.terminal").toggle "horizontal" end)
