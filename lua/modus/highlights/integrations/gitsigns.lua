local M = {}

--- Get GitSigns highlight groups
--- @param c theme.Colors Color palette
--- @return theme.Highlights
function M.get(c)
	return {
		GitSignsAdd = { fg = c.changes.add.sign, bg = c.changes.add.line_bg },
		GitSignsChange = { fg = c.changes.change.sign, bg = c.changes.change.line_bg },
		GitSignsDelete = { fg = c.changes.delete.sign, bg = c.changes.delete.line_bg },
		GitSignsTopdelete = { link = "GitSignsDelete" },
		GitSignsChangedelete = { link = "GitSignsChange" },
		GitSignsAddLn = { bg = c.changes.add.line_bg },
		GitSignsChangeLn = { bg = c.changes.change.line_bg },
		GitSignsDeleteVirtLn = { bg = c.changes.delete.line_bg },
		GitSignsDeletePreview = { link = "GitSignsDeleteVirtLn" },
		GitSignsAddInline = { bg = c.changes.add.text_bg },
		GitSignsChangeInline = { bg = c.changes.change.text_bg },
		GitSignsDeleteInline = { bg = c.changes.delete.text_bg },
		GitSignsAddLnInline = { link = "GitSignsAddInline" },
		GitSignsChangeLnInline = { link = "GitSignsChangeInline" },
		GitSignsDeleteLnInline = { link = "GitSignsDeleteInline" },
		GitSignsDeleteVirtLnInLine = { link = "GitSignsDeleteInline" },
		GitSignsCurrentLineBlame = { link = "Ignore" },
	}
end

return M
