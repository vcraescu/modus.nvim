local M = {}

--- Diagnostics and LSP highlights
--- @param c modus.Colors Color palette
--- @return modus.Highlights
function M.get(c)
	return {
		DiagnosticError = { fg = c.error },
		DiagnosticHint = { fg = c.hint },
		DiagnosticInfo = { fg = c.info },
		DiagnosticOk = { fg = c.ok },
		DiagnosticWarn = { fg = c.warning },
		DiagnosticFloatingError = { fg = c.error, bg = c.none },
		DiagnosticFloatingHint = { fg = c.hint, bg = c.none },
		DiagnosticFloatingInfo = { fg = c.info, bg = c.none },
		DiagnosticFloatingOk = { fg = c.ok, bg = c.none },
		DiagnosticFloatingWarn = { fg = c.warning, bg = c.none },
		DiagnosticSignError = { fg = c.error, bg = c.none },
		DiagnosticSignHint = { fg = c.hint, bg = c.none },
		DiagnosticSignInfo = { fg = c.info, bg = c.none },
		DiagnosticSignOk = { fg = c.ok, bg = c.none },
		DiagnosticSignWarn = { fg = c.warning, bg = c.none },
		DiagnosticUnderlineError = { sp = c.underline_error, undercurl = true },
		DiagnosticUnderlineHint = { sp = c.underline_note, undercurl = true },
		DiagnosticUnderlineInfo = { sp = c.underline_note, undercurl = true },
		DiagnosticUnderlineOk = { sp = c.underline_note, undercurl = true },
		DiagnosticUnderlineWarn = { sp = c.underline_warning, undercurl = true },
		DiagnosticVirtualTextError = { fg = c.error },
		DiagnosticVirtualTextHint = { fg = c.hint },
		DiagnosticVirtualTextInfo = { fg = c.info },
		DiagnosticVirtualTextOk = { fg = c.ok },
		DiagnosticVirtualTextWarn = { fg = c.warning },
		DiagnosticUnnecessary = { sp = c.underline_note, undercurl = true },
		LspCodeLens = { fg = c.fg_dim },
		LspCodeLensSeparator = { fg = c.border },
		LspInlayHint = { fg = c.fg_dim },
		LspReferenceRead = { sp = c.border, underline = true },
		LspReferenceText = { sp = c.border, underline = true },
		LspReferenceWrite = { sp = c.border, underline = true },
		LspSignatureActiveParameter = { fg = c.fg, bold = true },
	}
end

return M
