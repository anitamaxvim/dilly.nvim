local colors = require("dilly.colors")

return {
	Normal = { fg = colors.gold, bg = colors.almostBlack },
	CursorLine = { bg = colors.charcoal },
	CursorColumn = { bg = colors.charcoal },
	LineNr = { fg = colors.gray },
	CursorLineNr = { fg = colors.lightGray, bold = true },

	StatusLine = { fg = colors.lightGray, bg = colors.mutedGray },
	StatusLineNC = { fg = colors.gray, bg = colors.mutedGray },

	Pmenu = { fg = colors.lightGray, bg = colors.charcoal },
	PmenuSel = { fg = colors.almostBlack, bg = colors.lightGray },
	PmenuThumb = { bg = colors.silver },

	VertSplit = { fg = colors.gray, bg = colors.almostBlack },
	TabLine = { fg = colors.lightGray, bg = colors.almostBlack },
	TabLineSel = { fg = colors.gold, bg = colors.mutedGray, bold = true },
	TabLineFill = { bg = colors.almostBlack },

	Visual = { bg = colors.mutedGray },
	Search = { fg = colors.almostBlack, bg = colors.skyBlue },
	IncSearch = { fg = colors.almostBlack, bg = colors.cinnamon },

	ErrorMsg = { fg = colors.rosyBrown, bold = true },
	WarningMsg = { fg = colors.oliveDrab, bold = true },
	Question = { fg = colors.skyBlue },
}
