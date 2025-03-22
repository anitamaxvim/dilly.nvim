local M = {}

local function apply_highlights(highlights)
	for group, styles in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, styles)
	end
end

function M.setup()
	local colors = require("dilly.colors")

	local modules = {
		"dilly.highlights.syntax",
		"dilly.highlights.treesitter",
		"dilly.highlights.lsp",
		"dilly.highlights.editor",
    "dilly.highlights.plugins",
	}

	for _, mod in ipairs(modules) do
		local ok, hl = pcall(require, mod)
		if ok then
			apply_highlights(hl)
		else
			vim.notify("dilly: Error loading " .. mod, vim.log.levels.ERROR)
		end
	end
end

return M
