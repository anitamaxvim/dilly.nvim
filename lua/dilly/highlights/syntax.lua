local colors = require("dilly.colors")

return {
	Comment = { fg = colors.mediumSeaGreen, italic = true }, -- Comment color from the theme
	Constant = { fg = colors.skyBlue, bold = true }, -- Constant (keywords like true, false, etc.)
	String = { fg = colors.peachPuff }, -- String color in theme
	Character = { fg = colors.peachPuff }, -- Character strings (matches `String`)
	Number = { fg = colors.paleOlive }, -- Numbers are pale green
	Boolean = { fg = colors.skyBlue }, -- Boolean values are sky blue
	Float = { fg = colors.paleGreen }, -- Floating-point numbers in pale green

	Function = { fg = colors.orange, bold = true }, -- Function names in cinnamon with bold
	Keyword = { fg = colors.lightLavender }, -- Keywords like `if`, `else`, etc., in light lavender
	Operator = { fg = colors.gainsboro }, -- Operators like `+`, `-`, etc., in gainsboro (light gray)
	Type = { fg = colors.gold }, -- Types (e.g., int, float) in gold
	Variable = { fg = colors.oliveDrab }, -- Variables in olive drab (as per the theme)

	PreProc = { fg = colors.orchid }, -- Preprocessor directives in lavender
	Include = { fg = colors.lavender }, -- Includes (like #include) in lavender
	Define = { fg = colors.lavender }, -- Define macros in lavender
	Macro = { fg = colors.lavender }, -- Macros in lavender
	PreCondit = { fg = colors.lavender }, -- Conditional preprocessor directives in lavender

	Tag = { fg = colors.lightLavender, bold = true }, -- Tags (like HTML tags) in light lavender with bold
	Property = { fg = colors.silver }, -- Properties (like object attributes) in silver
	Punctuation = { fg = colors.gainsboro }, -- Punctuation marks like semicolons in light gray
}
