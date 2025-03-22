local colors = require("dilly.colors")

return {
	DiagnosticError = { fg = colors.rosyBrown },
	DiagnosticWarn = { fg = colors.oliveDrab },
	DiagnosticHint = { fg = colors.mutedGray },
	DiagnosticInfo = { fg = colors.skyBlue },

	LspReferenceText = { bg = colors.charcoal },
	LspReferenceRead = { bg = colors.charcoal },
	LspReferenceWrite = { bg = colors.charcoal },

	LspSignatureActiveParameter = { fg = colors.cinnamon, bold = true },
}
