function SetupColor()
    require("tokyonight").setup({
        style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
        light_style = "day", -- The theme is used when the background is set to light
        transparent = true, -- Enable this to disable setting the background color
        styles = {
            comments = { italic = true },
            keywords = { italic = true },
            functions = { italic = true },
            variables = {},
            sidebars = "dark", -- style for sidebars, see below
            floats = "dark", -- style for floating windows
        },
    })
end

function Color(color)
	SetupColor()
	color = color or "tokyonight"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

Color()

