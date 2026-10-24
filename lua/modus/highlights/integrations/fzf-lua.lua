local M = {}

--- Get FzfLua highlight groups
--- @param c theme.Colors Color palette
--- @return theme.Highlights
function M.get(c)
	return {
		FzfLuaNormal = { link = "NormalFloat" },
		FzfLuaBorder = { link = "FloatBorder" },
		FzfLuaTitle = { link = "FloatTitle" },

		FzfLuaPathColNr = { fg = c.line_number, bg = c.none },
		FzfLuaPathLineNr = { fg = c.line_number, bg = c.none },
		FzfLuaBufNr = { fg = c.number, bg = c.none },
		FzfLuaBufFlagCur = { fg = c.constant, bg = c.none },
		FzfLuaBufFlagAlt = { fg = c.fg_dim, bg = c.none },
		FzfLuaTabTitle = { fg = c.func, bg = c.none, bold = true },
		FzfLuaTabMarker = { fg = c.constant, bg = c.none },

		FzfLuaLiveSym = { link = "FzfLuaLivePrompt" },
		FzfLuaLivePrompt = { fg = c.prompt, bg = c.none },
		FzfLuaFzfMatch = { fg = c.match, bg = c.none },
		FzfLuaFzfPrompt = { fg = c.prompt, bg = c.none },

		FzfLuaHeaderBind = { fg = c.keybind, bg = c.none },
		FzfLuaHeaderText = { fg = c.fg_dim, bg = c.none },

		FzfLuaFzfPointer = { fg = c.keyword },
	}
end

return M
