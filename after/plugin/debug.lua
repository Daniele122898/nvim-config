-- dap
-- /home/daniele/debug-adapters/cpp/extension/debugAdapters/bin

local dap = require('dap')
dap.adapters.cppdbg = {
  id = 'cppdbg',
  type = 'executable',
  command = '/home/daniele/debug-adapters/cpp/extension/debugAdapters/bin/OpenDebugAD7',
}

dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "cppdbg",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopAtEntry = true,
  },
  {
    name = 'Attach to gdbserver :1234',
    type = 'cppdbg',
    request = 'launch',
    MIMode = 'gdb',
    miDebuggerServerAddress = 'localhost:1234',
    miDebuggerPath = '/usr/bin/gdb',
    cwd = '${workspaceFolder}',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
  },
}

vim.keymap.set("n", "<leader>db", function() require("dap").toggle_breakpoint() end)
vim.keymap.set("n", "<F5>", function() require("dap").continue() end)
vim.keymap.set("n", "<F8>", function() require("dap").step_over() end)
vim.keymap.set("n", "<F7>", function() require("dap").step_into() end)
vim.keymap.set("n", "<F6>", function() require("dap").step_out() end)

require("dapui").setup()
vim.keymap.set("n", "<leader>du", function() require("dapui").toggle() end)
vim.keymap.set('n', '<leader>de', function()
    local exp = vim.fn.input("Expression > ")
    require("dapui").eval(exp)
end)

require("nvim-dap-virtual-text").setup()
