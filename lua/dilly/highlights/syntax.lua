local colors = require("dilly.colors")

return {
	Comment = { fg = colors.forestGreen, italic = true },
	Constant = { fg = colors.skyBlue, bold = true },
	String = { fg = colors.rosyBrown },
	Character = { fg = colors.rosyBrown },
	Number = { fg = colors.paleGreen },
	Boolean = { fg = colors.skyBlue },
	Float = { fg = colors.paleGreen },

	Function = { fg = colors.cinnamon, bold = true },
	Keyword = { fg = colors.orchid },
	Operator = { fg = colors.lightGray },
	Type = { fg = colors.gold },
	Variable = { fg = colors.gold },

	PreProc = { fg = colors.lavender },
	Include = { fg = colors.lavender },
	Define = { fg = colors.lavender },
	Macro = { fg = colors.lavender },
	PreCondit = { fg = colors.lavender },

	Tag = { fg = colors.orchid, bold = true },
	Property = { fg = colors.silver },
	Punctuation = { fg = colors.lightGray },
}
