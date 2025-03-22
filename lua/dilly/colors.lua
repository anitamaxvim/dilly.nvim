local M = {}

function M.load(colors)
	-- Clear any previous highlighting
	vim.cmd("highlight clear")

	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	-- Set colorscheme name
	vim.g.colors_name = "dilly"

	-- Set terminal colors
	vim.g.terminal_color_0 = colors.dark_bg
	vim.g.terminal_color_1 = colors.red
	vim.g.terminal_color_2 = colors.green
	vim.g.terminal_color_3 = colors.yellow
	vim.g.terminal_color_4 = colors.blue
	vim.g.terminal_color_5 = colors.purple
	vim.g.terminal_color_6 = colors.cyan
	vim.g.terminal_color_7 = colors.fg
	vim.g.terminal_color_8 = colors.comment
	vim.g.terminal_color_9 = colors.light_red
	vim.g.terminal_color_10 = colors.green
	vim.g.terminal_color_11 = colors.light_yellow
	vim.g.terminal_color_12 = colors.blue
	vim.g.terminal_color_13 = colors.purple
	vim.g.terminal_color_14 = colors.cyan
	vim.g.terminal_color_15 = colors.fg

	-- Define highlight groups
	local highlights = {
		-- Editor UI
		Normal = { fg = colors.fg, bg = colors.bg },
		NormalFloat = { fg = colors.fg, bg = colors.dark_bg },
		Cursor = { fg = colors.bg, bg = colors.cursor },
		CursorLine = { bg = colors.light_bg },
		CursorColumn = { bg = colors.light_bg },
		LineNr = { fg = colors.gutter },
		CursorLineNr = { fg = colors.yellow },
		VertSplit = { fg = colors.gutter, bg = colors.bg },
		MatchParen = { fg = colors.fg, bg = colors.selection, bold = true },
		ColorColumn = { bg = colors.light_bg },
		SignColumn = { bg = colors.bg },
		Visual = { bg = colors.selection },
		VisualNOS = { bg = colors.selection },
		Search = { fg = colors.bg, bg = colors.yellow },
		IncSearch = { fg = colors.bg, bg = colors.orange },
		Folded = { fg = colors.comment, bg = colors.light_bg },
		FoldColumn = { fg = colors.comment, bg = colors.bg },
		StatusLine = { fg = colors.fg, bg = colors.light_bg },
		StatusLineNC = { fg = colors.comment, bg = colors.light_bg },

		-- Popup menus
		Pmenu = { fg = colors.fg, bg = colors.dark_bg },
		PmenuSel = { fg = colors.fg, bg = colors.selection },
		PmenuSbar = { bg = colors.dark_bg },
		PmenuThumb = { bg = colors.gutter },

		-- Diagnostics
		DiagnosticError = { fg = colors.error },
		DiagnosticWarn = { fg = colors.warning },
		DiagnosticInfo = { fg = colors.info },
		DiagnosticHint = { fg = colors.hint },

		-- Syntax highlighting
		Comment = { fg = colors.comment, italic = true },
		String = { fg = colors.green },
		Character = { fg = colors.green },
		Number = { fg = colors.orange },
		Boolean = { fg = colors.orange },
		Float = { fg = colors.orange },
		Identifier = { fg = colors.red },
		Function = { fg = colors.blue },
		Statement = { fg = colors.purple },
		Conditional = { fg = colors.purple },
		Repeat = { fg = colors.purple },
		Label = { fg = colors.purple },
		Operator = { fg = colors.cyan },
		Keyword = { fg = colors.purple },
		Exception = { fg = colors.purple },
		PreProc = { fg = colors.yellow },
		Include = { fg = colors.purple },
		Define = { fg = colors.purple },
		Macro = { fg = colors.purple },
		Type = { fg = colors.yellow },
		StorageClass = { fg = colors.yellow },
		Structure = { fg = colors.yellow },
		Typedef = { fg = colors.yellow },
		Special = { fg = colors.blue },
		SpecialComment = { fg = colors.comment, italic = true },
		Error = { fg = colors.error },
		Todo = { fg = colors.purple, bold = true, italic = true },

		-- Treesitter syntax
		["@variable"] = { fg = colors.fg },
		["@function"] = { fg = colors.blue },
		["@function.builtin"] = { fg = colors.cyan },
		["@function.call"] = { fg = colors.blue },
		["@method"] = { fg = colors.blue },
		["@method.call"] = { fg = colors.blue },
		["@constructor"] = { fg = colors.yellow },
		["@parameter"] = { fg = colors.orange, italic = true },

		["@keyword"] = { fg = colors.purple },
		["@keyword.function"] = { fg = colors.purple },
		["@keyword.return"] = { fg = colors.purple },
		["@keyword.operator"] = { fg = colors.purple },

		["@property"] = { fg = colors.red },
		["@field"] = { fg = colors.red },
		["@variable.builtin"] = { fg = colors.red, italic = true },

		["@string"] = { fg = colors.green },
		["@string.escape"] = { fg = colors.cyan },
		["@string.special"] = { fg = colors.cyan },

		["@type"] = { fg = colors.yellow },
		["@type.builtin"] = { fg = colors.yellow, italic = true },
		["@attribute"] = { fg = colors.cyan },
		["@property.lua"] = { fg = colors.red },

		-- LSP semantic tokens
		["@lsp.type.function"] = { link = "@function" },
		["@lsp.type.method"] = { link = "@method" },
		["@lsp.type.variable"] = { link = "@variable" },
		["@lsp.type.parameter"] = { link = "@parameter" },
		["@lsp.type.property"] = { link = "@property" },

		-- Git highlighting
		GitSignsAdd = { fg = colors.green },
		GitSignsChange = { fg = colors.blue },
		GitSignsDelete = { fg = colors.red },

		-- Plugin-specific highlighting
		-- -- NvimTree
		-- NvimTreeNormal = { fg = colors.fg, bg = colors.dark_bg },
		-- NvimTreeFolderIcon = { fg = colors.blue },
		-- NvimTreeFolderName = { fg = colors.blue },
		-- NvimTreeOpenedFolderName = { fg = colors.blue, bold = true },

		-- Telescope
		-- TelescopeNormal = { fg = colors.fg, bg = colors.dark_bg },
		-- TelescopeBorder = { fg = colors.comment, bg = colors.dark_bg },
		-- TelescopePromptBorder = { fg = colors.comment, bg = colors.dark_bg },
		-- TelescopeResultsBorder = { fg = colors.comment, bg = colors.dark_bg },
		-- TelescopePreviewBorder = { fg = colors.comment, bg = colors.dark_bg },
		--
		-- -- Buffer line
		-- BufferLineFill = { bg = colors.dark_bg },
		-- BufferLineBackground = { fg = colors.comment, bg = colors.dark_bg },
		-- BufferLineBufferSelected = { fg = colors.fg, bg = colors.bg, bold = true },
	}

	-- Set highlight groups
	-- for group, styles in pairs(highlights) do
	-- 	M.highlight(group, styles)
	-- end

	-- Link some highlight groups to maintain compatibility
	local links = {
		["@punctuation.bracket"] = "Delimiter",
		["@punctuation.special"] = "Delimiter",
		["@constant.builtin"] = "Special",
		["@text.note"] = "SpecialComment",
		["@text.warning"] = "Todo",
		["@text.danger"] = "Error",
	}

	for from, to in pairs(links) do
		vim.cmd(string.format("highlight! link %s %s", from, to))
	end
end

-- Helper function to set highlights
-- function M.highlight(group, styles)
-- 	local style_attrs = {}
--
-- 	if styles.fg then
-- 		style_attrs[#style_attrs + 1] = "guifg=" .. styles.fg
-- 	end
-- 	if styles.bg then
-- 		style_attrs[#style_attrs + 1] = "guibg=" .. styles.bg
-- 	end
--
-- 	if styles.sp then
-- 		style_attrs[#style_attrs + 1] = "guisp=" .. styles.sp
-- 	end
--
-- 	if styles.bold then
-- 		style_attrs[#style_attrs + 1] = "bold"
-- 	end
-- 	if styles.italic then
-- 		style_attrs[#style_attrs + 1] = "italic"
-- 	end
-- 	if styles.underline then
-- 		style_attrs[#style_attrs + 1] = "underline"
-- 	end
-- 	if styles.undercurl then
-- 		style_attrs[#style_attrs + 1] = "undercurl"
-- 	end
-- 	if styles.reverse then
-- 		style_attrs[#style_attrs + 1] = "reverse"
-- 	end
--
-- 	local style_str = table.concat(style_attrs, " ")
--
-- 	vim.cmd(string.format("highlight %s %s", group, style_str))
-- end

return M
