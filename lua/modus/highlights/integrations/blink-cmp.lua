local M = {}

--- Get BlinkCmp highlight groups
--- @param c modus.Colors palette
--- @return modus.Highlights
function M.get(c)
	return {
		BlinkCmpMenu = { link = "Pmenu" },
		BlinkCmpMenuBorder = { fg = c.bg_active, bg = c.bg_popup },
		BlinkCmpMenuSelection = { link = "PmenuSel" },
		BlinkCmpLabelMatch = { fg = c.match },

		BlinkCmpKind = { link = "@type" },
		BlinkCmpKindClass = { link = "@type" },
		BlinkCmpKindColor = { link = "@constant" },
		BlinkCmpKindConstant = { link = "@constant" },
		BlinkCmpKindConstructor = { link = "@constructor" },
		BlinkCmpKindEnum = { link = "@type" },
		BlinkCmpKindEnumMember = { link = "@constant" },
		BlinkCmpKindEvent = { link = "@constant" },
		BlinkCmpKindField = { link = "@variable.member" },
		BlinkCmpKindFile = { link = "@string.special.path" },
		BlinkCmpKindFolder = { link = "Directory" },
		BlinkCmpKindFunction = { link = "@function" },
		BlinkCmpKindInterface = { link = "@type" },
		BlinkCmpKindKeyword = { link = "@keyword" },
		BlinkCmpKindMethod = { link = "@function.method" },
		BlinkCmpKindModule = { link = "@module" },
		BlinkCmpKindOperator = { link = "@operator" },
		BlinkCmpKindProperty = { link = "@property" },
		BlinkCmpKindReference = { link = "@markup.link" },
		BlinkCmpKindSnippet = { link = "@string" },
		BlinkCmpKindStruct = { link = "@type" },
		BlinkCmpKindText = { link = "@markup" },
		BlinkCmpKindTypeParameter = { link = "@type" },
		BlinkCmpKindUnit = { link = "@constant" },
		BlinkCmpKindValue = { link = "@constant" },
		BlinkCmpKindVariable = { link = "@variable" },

		BlinkCmpLabelDetail = { fg = c.docstring },
		BlinkCmpLabelDescription = { fg = c.docstring },

		BlinkCmpDoc = { link = "NormalFloat" },
		BlinkCmpDocBorder = { link = "FloatBorder" },
		BlinkCmpDocSeparator = { link = "FloatBorder" },

		BlinkCmpSignatureHelp = { link = "NormalFloat" },
		BlinkCmpSignatureHelpBorder = { link = "FloatBorder" },
		BlinkCmpSignatureHelpActiveParameter = { link = "LspSignatureActiveParameter" },

		BlinkCmpGhostText = { fg = c.ghost_text },
	}
end

return M
