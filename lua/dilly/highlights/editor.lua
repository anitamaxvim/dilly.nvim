local colors = require("dilly.colors")

return {
	Normal = { fg = colors.oliveDrab, bg = colors.charcoal },
	CursorLine = { bg = colors.darkGrayishGreen },
	CursorColumn = { bg = colors.darkGrayishGreen },
	LineNr = { fg = colors.gray }, -- Line numbers in gray
	CursorLineNr = { fg = colors.lightGray, bold = true }, -- Active line number in light gray with bold

	-- Status Line
	StatusLine = { fg = colors.lightGray, bg = colors.gunmetal }, -- Status line in light gray and muted gray
	StatusLineNC = { fg = colors.gray, bg = colors.gunmetal }, -- Non-active status line with gray and muted gray

	-- Popup Menu
	Pmenu = { fg = colors.lightGray, bg = colors.charcoal }, -- Popup menu text in light gray with charcoal background
	PmenuSel = { fg = colors.almostBlack, bg = colors.lightGray }, -- Selected popup menu item
	PmenuThumb = { bg = colors.silver }, -- Scrollbar thumb in silver

	-- Split and Tab Line
	VertSplit = { fg = colors.gray, bg = colors.almostBlack }, -- Vertical split line in gray on almost black background
	TabLine = { fg = colors.lightGray, bg = colors.almostBlack }, -- Tab line in light gray on almost black background
	TabLineSel = { fg = colors.gold, bg = colors.mutedGray, bold = true }, -- Selected tab in gold and muted gray
	TabLineFill = { bg = colors.almostBlack }, -- Filled tab line in almost black background

	-- Visual Selection and Search
	Visual = { bg = colors.mutedGray }, -- Visual selection in muted gray
	Search = { fg = colors.almostBlack, bg = colors.skyBlue }, -- Search highlight with sky blue background
	IncSearch = { fg = colors.almostBlack, bg = colors.cinnamon }, -- Incremental search in cinnamon background

	-- Error and Warning Messages
	ErrorMsg = { fg = colors.rosyBrown, bold = true }, -- Error messages in rosy brown with bold
	WarningMsg = { fg = colors.oliveDrab, bold = true }, -- Warning messages in olive drab with bold
	Question = { fg = colors.skyBlue }, -- Question text in sky blue
}
