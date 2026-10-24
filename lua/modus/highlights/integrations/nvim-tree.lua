local M = {}

--- Get NvimTree highlight groups
--- @param c theme.Colors Color palette
--- @return theme.Highlights
function M.get(c)
	return {
		NvimTreeNormal = { fg = c.fg, bg = c.none },
		NvimTreeWinSeparator = { link = "WinSeparator" },

		NvimTreeRootFolder = { fg = c.directory },

		NvimTreeFolderName = { fg = c.directory },
		NvimTreeFolderIcon = { link = "NvimTreeFolderName" },
		NvimTreeEmptyFolderName = { link = "NvimTreeFolderName" },
		NvimTreeOpenedFolderName = { link = "NvimTreeFolderName" },

		NvimTreeOpenedFile = { link = "NvimTreeNormal" },
		NvimTreeSpecialFile = { link = "NvimTreeNormal" },
		NvimTreeExecFile = { link = "NvimTreeNormal" },
		NvimTreeImageFile = { link = "NvimTreeNormal" },
		NvimTreeSymlink = { fg = c.link_symbolic, underline = true },

		NvimTreeGitDirty = { fg = c.warning },
		NvimTreeGitDirtyIcon = { link = "NvimTreeGitDirty" },
		NvimTreeGitStaged = { fg = c.info },
		NvimTreeGitStagedIcon = { link = "NvimTreeGitStaged" },
		NvimTreeGitMerge = { fg = c.error },
		NvimTreeGitMergeIcon = { link = "NvimTreeGitMerge" },
		NvimTreeGitRenamed = { fg = c.warning },
		NvimTreeGitRenamedIcon = { link = "NvimTreeGitRenamed" },
		NvimTreeGitNew = { fg = c.info },
		NvimTreeGitNewIcon = { link = "NvimTreeGitNew" },
		NvimTreeGitDeleted = { fg = c.error },
		NvimTreeGitDeletedIcon = { link = "NvimTreeGitDeleted" },
		NvimTreeGitIgnored = { link = "Ignore" },
		NvimTreeGitIgnoredIcon = { link = "NvimTreeGitIgnored" },

		NvimTreeCursorLine = { link = "CursorLine" },
		NvimTreeCursorLineNC = { link = "CursorLine" },

		NvimTreeIndentMarker = { fg = c.border },

		NvimTreeWindowPicker = { link = "PmenuSel" },

		NvimTreeStatusLine = { link = "StatusLine" },
		NvimTreeStatusLineNC = { link = "StatusLineNC" },
	}
end

return M
