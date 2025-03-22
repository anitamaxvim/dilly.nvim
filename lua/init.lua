local M = {}

function M.setup(opts)
	-- Allow for user configuration to override defaults
	opts = opts or {}

	-- Load the colorscheme
	require("dilly.colors").load(opts)
end

return M
