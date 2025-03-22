local colors = require("dilly.colors")

return {
	["@comment"] = { fg = colors.forestGreen, italic = true },
	["@constant"] = { fg = colors.skyBlue },
	["@function"] = { fg = colors.cinnamon },
	["@keyword"] = { fg = colors.orchid },
	["@operator"] = { fg = colors.lightGray },
	["@property"] = { fg = colors.silver },
	["@string"] = { fg = colors.rosyBrown },
	["@type"] = { fg = colors.gold },
	["@variable"] = { fg = colors.gold },
}
