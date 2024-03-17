local nt = require("neotest")

nt.setup({
  adapters = {
    require("neotest-python")({
      dap = { justMyCode = false },
    }),
  },
})

vim.keymap.set("n", "<leader>dt", function () nt.run.run(vim.fn.expand("%")) end)
