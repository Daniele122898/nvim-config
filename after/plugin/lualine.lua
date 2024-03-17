require('lualine').setup {
    sections = {
        lualine_c = {
            {
                'filename',
                show_filename_only = false,
                path = 1
            }
        }
    }, 
    inactive_sections = {
        lualine_c = {
            {
                'filename',
                show_filename_only = false,
                path = 1
            }
        }
    }
}
