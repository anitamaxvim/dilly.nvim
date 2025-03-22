local M = {}

-- Default configuration
M.default_config = {
	-- Base colors
	bg = "#282c34",
	fg = "#abb2bf",
	dark_bg = "#21252b",
	light_bg = "#2c313a",

	-- UI elements
	selection = "#3e4452",
	comment = "#5c6370",
	gutter = "#4b5263",
	cursor = "#528bff",

	-- Syntax colors
	red = "#e06c75",
	orange = "#d19a66",
	yellow = "#e5c07b",
	green = "#98c379",
	cyan = "#56b6c2",
	blue = "#61afef",
	purple = "#c678dd",

	-- Special colors
	error = "#f44747",
	warning = "#ff8800",
	info = "#4fc1ff",
	hint = "#56b6c2",

	-- Additional variations
	dark_red = "#be5046",
	light_red = "#ff7a85",
	dark_yellow = "#d19a66",
	light_yellow = "#ffe082",
}

function M.setup(opts)
	-- Merge user options with defaults
	opts = vim.tbl_deep_extend("force", M.default_config, opts or {})

	-- Load the colorscheme
	require("dilly.colors").load(opts)
end

-- This ensures the colorscheme works when loaded as a plugin
return M
