local M = {}

--- Default configuration
--- Users can override these settings by passing a table to the setup function
--- @type modus.Config
local defaults = {
	-- Transparent background
	transparent = false,

	-- Set terminal colors
	terminal_colors = true,

	-- Style customization for different syntax groups
	styles = {
		comments = {},
		keywords = {},
		functions = {},
		variables = {},
	},

	-- Function that receives colors table and returns highlight overrides
	overrides = function()
		return {}
	end,

	-- Function that receives the final highlights table and can modify it directly
	on_highlights = function() end,
}

--- Setup configuration
---@param opts? modus.Opts User configuration
function M.setup(opts)
	M.config = vim.tbl_deep_extend("force", defaults, opts or {})
end

--- Get current configuration
--- @return modus.Config Current configuration
function M.get()
	if not M.config then
		M.config = vim.deepcopy(defaults)
	end
	return M.config
end

return M
