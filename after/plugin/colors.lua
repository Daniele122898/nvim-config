rp = require('rose-pine')
rp.setup({
    styles = {
        bold = true,
        italic = false,
        transparency = false,
    },
})

function ColorMyPencils(color) 
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)
end

ColorMyPencils()
