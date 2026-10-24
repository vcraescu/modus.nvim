local M = {}

--- @param c modus.Colors Color palette
--- @return modus.Highlights
function M.get(c)
	local blink_cmp = require("modus.highlights.integrations.blink-cmp")
	local copilot = require("modus.highlights.integrations.copilot")
	local fzf_lua = require("modus.highlights.integrations.fzf-lua")
	local gitsigns = require("modus.highlights.integrations.gitsigns")
	local nvim_tree = require("modus.highlights.integrations.nvim-tree")

	return vim.tbl_extend(
		"force",
		{},
		blink_cmp.get(c),
		copilot.get(c),
		fzf_lua.get(c),
		gitsigns.get(c),
		nvim_tree.get(c)
	)
end

return M
