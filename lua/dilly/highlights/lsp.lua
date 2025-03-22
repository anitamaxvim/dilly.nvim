local colors = require("dilly.colors")

return {
	-- LSP Diagnostics
	Error = { fg = colors.rosyBrown, bold = true }, -- Error messages in rosy brown, bold
	Warning = { fg = colors.oliveDrab, bold = true }, -- Warning messages in olive drab, bold
	Information = { fg = colors.skyBlue }, -- Information messages in sky blue
	Hint = { fg = colors.lightGray }, -- Hint messages in light gray
  DiagnosticUnnecessary = {},

	-- LSP Signs
	LspDiagnosticsDefaultError = { fg = colors.rosyBrown }, -- Default error sign color
	LspDiagnosticsDefaultWarning = { fg = colors.oliveDrab }, -- Default warning sign color
	LspDiagnosticsDefaultInformation = { fg = colors.skyBlue }, -- Default information sign color
	LspDiagnosticsDefaultHint = { fg = colors.lightGray }, -- Default hint sign color

	-- LSP Floating Window (useful for showing errors or warnings in a pop-up)
	LspFloatWinNormal = { fg = colors.gold, bg = colors.charcoal }, -- Floating window with gold text on charcoal background
	LspFloatWinBorder = { fg = colors.gray }, -- Border of floating window in gray

	-- LSP Inlay Hints
	LspInlayHint = { fg = colors.mutedGray, italic = true }, -- Inlay hints in muted gray and italicized

	-- LSP Highlight for Type or Function Signatures
	LspSignatureActiveParameter = { fg = colors.oliveDrab, bold = true }, -- Active signature parameter in olive drab and bold
}
