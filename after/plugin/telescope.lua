require('telescope').setup {
    defaults = {
        cache_picker = {
            num_pickers = 20
        }
    }
}

vim.keymap.set('n', '<leader>fp', ':Telescope pickers<CR>')
vim.keymap.set('n', '<leader>fr', ':Telescope resume<CR>')

local builtin = require('telescope.builtin')


-- vim.keymap.set('n', '<leader>fa', ":lua require'telescope.builtin'.live_grep{ vimgrep_arguments = { 'rg', '--color=never', '--no-heading', '--with-filename', '--line-number', '--column', '--smart-case', '-u' } }<CR>")
vim.keymap.set('n', '<leader>fa', function() 
    builtin.live_grep({ vimgrep_arguments = { 'rg', '--color=never', '--no-heading', '--with-filename', '--line-number', '--column', '--smart-case', '-u' } })
end)

vim.keymap.set('n', '<leader>fl', function() 
    builtin.live_grep({ search_dirs={vim.fn.input('Directory to search: ', vim.fn.getcwd() .. '/', 'dir')}, vimgrep_arguments = { 'rg', '--color=never', '--no-heading', '--with-filename', '--line-number', '--column', '--smart-case', '-u' } })
end)

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fs', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fc', function()
    builtin.live_grep({ search_dirs={vim.fn.expand("%:p")} })
end)
vim.keymap.set('n', '<leader>fd', function()
    builtin.live_grep({ search_dirs={vim.fn.input('Directory to search: ', vim.fn.getcwd() .. '/', 'dir')} })
end)
vim.keymap.set('n', '<leader>fw', builtin.grep_string, {})

vim.keymap.set('n', '<leader>fm', builtin.marks, {})
vim.keymap.set('n', '<leader>md', function()
    local marker = vim.fn.input('Marker do delete: ')
    vim.api.nvim_command('delm ' .. marker)
end)


