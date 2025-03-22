local M = {}

M.setup = function()
	-- Load colors
	local colors = require("dilly.colors")

	-- Apply highlight groups
	local highlight = vim.api.nvim_set_hl
	local function hl(group, opts)
		highlight(0, group, opts)
	end

	-- Basic UI Colors
	hl("Normal", { fg = colors.fg, bg = colors.bg })
	hl("Comment", { fg = colors.comment, italic = true })
	hl("Constant", { fg = colors.constant })
	hl("String", { fg = colors.string })
	hl("Function", { fg = colors.func })
	hl("Statement", { fg = colors.keyword, bold = true })
	hl("Type", { fg = colors.type })
	hl("Keyword", { fg = colors.keyword })
	hl("Error", { fg = colors.error, bold = true })
	hl("Todo", { fg = colors.todo, bold = true, italic = true })

	-- Treesitter Highlighting
	hl("@comment", { link = "Comment" })
	hl("@constant", { link = "Constant" })
	hl("@string", { link = "String" })
	hl("@function", { link = "Function" })
	hl("@keyword", { link = "Keyword" })
	hl("@type", { link = "Type" })

	-- LSP Highlighting
	hl("LspDiagnosticsDefaultError", { fg = colors.error })
	hl("LspDiagnosticsDefaultWarning", { fg = colors.warning })
	hl("LspDiagnosticsDefaultHint", { fg = colors.hint })
	hl("LspDiagnosticsDefaultInformation", { fg = colors.info })
end

return M
