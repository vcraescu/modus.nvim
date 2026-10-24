local M = {}

--- Get highlight groups shared by copilot.vim and copilot.lua
--- @param c modus.Colors Color palette
--- @return modus.Highlights
function M.get(c)
	return {
		CopilotSuggestion = { fg = c.ghost_text },
		CopilotAnnotation = { link = "MoreMsg" },
	}
end

return M
