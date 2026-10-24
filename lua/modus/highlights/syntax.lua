local M = {}

--- Get syntax highlight groups
--- @param c modus.Colors Color palette
--- @param config modus.Config User configuration
--- @return modus.Highlights
function M.get(c, config)
	local util = require("modus.util")
	local styles = util.get_styles(config)

	return {
		Boolean = { fg = c.constant },
		Character = { fg = c.string },
		Comment = styles.comments({ fg = c.comment }),
		Conditional = { link = "Keyword" },
		Constant = { fg = c.constant },
		Debug = { fg = c.warning },
		Define = { link = "PreProc" },
		Delimiter = { fg = c.delimiter },
		Error = { fg = c.error },
		Exception = { link = "Keyword" },
		Float = { link = "Number" },
		Function = styles.functions({ fg = c.func, nocombine = true }),
		Identifier = styles.variables({ fg = c.fg, nocombine = true }),
		Ignore = { fg = c.fg_dim },
		Include = { link = "PreProc" },
		Keyword = styles.keywords({ fg = c.keyword }),
		Label = { fg = c.constant },
		Macro = { link = "PreProc" },
		Number = { fg = c.number },
		Operator = { fg = c.operator },
		PreCondit = { link = "PreProc" },
		PreProc = { fg = c.preprocessor },
		Repeat = { link = "Keyword" },
		Special = { fg = c.builtin },
		SpecialChar = { fg = c.regex_backslash },
		SpecialComment = styles.comments({ fg = c.docstring }),
		Statement = { link = "Keyword" },
		StorageClass = { link = "Keyword" },
		String = { fg = c.string },
		Structure = { link = "Keyword" },
		Tag = { fg = c.func },
		Todo = { fg = c.todo },
		Type = { fg = c.type, nocombine = true },
		Typedef = { link = "Type" },
		Underlined = { fg = c.link, underline = true },
	}
end

return M
