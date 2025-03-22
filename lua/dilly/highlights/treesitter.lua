local colors = require("dilly.colors")

return {
	-- General syntax highlighting
	["@comment"] = { fg = colors.mediumSeaGreen, italic = true }, -- Comments in forest gre

	["@keyword"] = { fg = colors.lightLavender }, -- Keywords in orchid
	["@keyword.function"] = { fg = colors.lightLavender, bold = true }, -- Function keywords in cinnamon and bold
	["@keyword.operator"] = { fg = colors.lightLavender }, -- Operators in light gray

	["@variable"] = { fg = colors.oliveDrab }, -- Variables in gold
	["@variable.builtin"] = { fg = colors.oliveDrab }, -- Built-in variables in sky blue
	["@variable.parameter"] = { fg = colors.orange },
	["@variable.member"] = { fg = colors.silver },

	["@type"] = { fg = colors.gold }, -- Types in gold
	["@type.builtin"] = { fg = colors.gold }, -- Built-in types in gold

	["@function"] = { fg = colors.orange, bold = true }, -- Functions in cinnamon and bold
	["@function.builtin"] = { fg = colors.gold }, -- Built-in functions in sky blue

	["@constructor"] = { fg = colors.orange },

	["@string"] = { fg = colors.peachPuff }, -- Strings in rosy brown
	["@string.regex"] = { fg = colors.peachPuff }, -- Regex strings in rosy brown
	["@character"] = { fg = colors.peachPuff }, -- Characters in rosy brown
	["@number"] = { fg = colors.paleOlive }, -- Numbers in pale green
	["@boolean"] = { fg = colors.skyBlue }, -- Booleans in sky blue
	["@float"] = { fg = colors.paleOlive }, -- Floats in pale green

	["@module"] = { fg = colors.oliveDrab },

	-- Function Parameters
	-- ["@parameter"] = { fg = colors.silver }, -- Parameters in silver
	-- ["@parameter.reference"] = { fg = colors.lightGray }, -- Parameter references in light gray

	["@constant"] = { fg = colors.skyBlue, bold = true }, -- Constants in sky blue and bold
	["@constant.builtin"] = { fg = colors.skyBlue, bold = true }, -- Built-in constants in sky blue and bold
	["@type.qualifier"] = { fg = colors.gold }, -- Type qualifiers in gold
	["@type.definition"] = { fg = colors.gold }, -- Type definitions in gold
	["@variable.other"] = { fg = colors.oliveDrab }, -- Other variables in silver
	["@variable.magic"] = { fg = colors.oliveDrab }, -- Magic variables in sky blue
	["@function.macro"] = { fg = colors.orange, bold = true }, -- Macro functions in lavender and bold

	-- -- Conditional and Loop Statements
	-- ["@conditional"] = { fg = colors.orchid }, -- Conditional keywords in orchid
	-- ["@loop"] = { fg = colors.orchid }, -- Loop keywords in orchid
	-- ["@repeat"] = { fg = colors.orchid }, -- Repeat keywords in orchid

	-- Class and Interface
	["@class"] = { fg = colors.gold, bold = true }, -- Classes in gold and bold
	["@interface"] = { fg = colors.gold, bold = true }, -- Interfaces in gold and bold

	-- Structs and enums
	["@struct"] = { fg = colors.gold }, -- Structs in gold
	["@enum"] = { fg = colors.gold }, -- Enums in gold
	["@enum.member"] = { fg = colors.silver }, -- Enum members in silver

	-- Additional styling for various nodes
	["@annotation"] = { fg = colors.lavender }, -- Annotations in lavender
	["@variable.cs"] = { fg = colors.skyBlue }, -- C# variables in sky blue
}
