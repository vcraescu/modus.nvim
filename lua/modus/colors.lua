local M = {}

--- Get the semantic colors of a variant
--- @param variant modus.Variant
--- @return modus.Colors
function M.get(variant)
	--- @type modus.Palette
	local p = require("modus.palettes." .. variant)

	--- @class modus.Colors
	local colors = {
		-- Backgrounds
		--- Editor background
		bg = p.bg_main,
		--- Dim surface background
		bg_dim = p.bg_dim,
		--- Emphasized surface background
		bg_active = p.bg_active,
		--- Subtle surface background
		bg_inactive = p.bg_inactive,
		--- Completion menu background
		bg_popup = p.bg_popup,

		-- Foregrounds
		--- Default text
		fg = p.fg_main,
		--- Dim text
		fg_dim = p.fg_dim,

		-- Editor
		border = p.border,
		cursor = p.cursor,
		cursorline = p.bg_hl_line,
		visual = p.bg_region,
		visual_fg = p.fg_region,
		--- Selected completion item background
		selection = p.bg_completion,
		--- Line number, sign, and fold column background
		gutter = p.fringe,
		line_number = p.fg_line_number_inactive,
		line_number_current = p.fg_line_number_active,
		line_number_current_bg = p.bg_line_number_active,
		statusline = p.fg_mode_line_active,
		statusline_bg = p.bg_mode_line_active,
		statusline_nc = p.fg_mode_line_inactive,
		statusline_nc_bg = p.bg_mode_line_inactive,
		tabline_bg = p.bg_tab_bar,
		tabline_current_bg = p.bg_tab_current,
		tabline_other_bg = p.bg_tab_other,
		paren_match = p.fg_paren_match,
		paren_match_bg = p.bg_paren_match,
		directory = p.accent_0,
		prompt = p.fg_prompt,
		keybind = p.keybind,
		whitespace = p.fg_space,
		ghost_text = p.fg_dim,
		--- Inline code foreground
		markup_code = p.fg_prose_code,
		--- Code block background
		markup_code_bg = p.bg_prose_block_contents,
		--- Heading foregrounds, levels 1 to 6
		headings = {
			p.fg_heading_1,
			p.fg_heading_2,
			p.fg_heading_3,
			p.fg_heading_4,
			p.fg_heading_5,
			p.fg_heading_6,
		},

		-- Code
		keyword = p.keyword,
		builtin = p.builtin,
		string = p.string,
		docstring = p.docstring,
		docmarkup = p.docmarkup,
		number = p.number,
		constant = p.constant,
		func = p.fnname,
		func_call = p.fnname_call,
		variable = p.variable,
		property = p.property,
		type = p.type,
		comment = p.comment,
		preprocessor = p.preprocessor,
		operator = p.operator,
		punctuation = p.punctuation,
		bracket = p.bracket,
		delimiter = p.delimiter,
		regex_backslash = p.rx_backslash,
		regex_construct = p.rx_construct,

		-- Diagnostics
		error = p.err,
		warning = p.warning,
		info = p.info,
		hint = p.fg_dim,
		ok = p.info,
		underline_error = p.underline_err,
		underline_warning = p.underline_warning,
		underline_note = p.underline_note,
		--- Error label foreground
		prominent_error = p.fg_prominent_err,
		--- Error label background
		prominent_error_bg = p.bg_prominent_err,
		--- Warning label foreground
		prominent_warning = p.fg_prominent_warning,
		--- Warning label background
		prominent_warning_bg = p.bg_prominent_warning,
		--- Note label foreground
		prominent_note = p.fg_prominent_note,
		--- Note label background
		prominent_note_bg = p.bg_prominent_note,

		-- Search
		search_current = p.fg_search_current,
		search_current_bg = p.bg_search_current,
		search_lazy = p.fg_search_lazy,
		search_lazy_bg = p.bg_search_lazy,
		search_replace = p.fg_search_replace,
		search_replace_bg = p.bg_search_replace,
		--- Fuzzy and completion match foreground
		match = p.fg_completion_match_0,

		-- Shared Git and diff colors
		changes = {
			add = {
				--- Text foreground
				fg = p.fg_added,
				--- Marker foreground
				sign = p.fg_added_intense,
				--- Full-line background
				line_bg = p.bg_added,
				--- Inline text background
				text_bg = p.bg_added_refine,
			},
			change = {
				--- Text foreground
				fg = p.fg_changed,
				--- Marker foreground
				sign = p.fg_changed_intense,
				--- Full-line background
				line_bg = p.bg_changed,
				--- Inline text background
				text_bg = p.bg_changed_refine,
			},
			delete = {
				--- Text foreground
				fg = p.fg_removed,
				--- Marker foreground
				sign = p.fg_removed_intense,
				--- Full-line background
				line_bg = p.bg_removed,
				--- Inline text background
				text_bg = p.bg_removed_refine,
			},
		},

		-- Special elements
		link = p.fg_link,
		--- Symbolic link foreground
		link_symbolic = p.fg_link_symbolic,
		--- Transparency sentinel
		none = "NONE",

		-- Terminal
		terminal = {
			black = p.fg_term_black,
			bright_black = p.fg_term_black_bright,
			red = p.fg_term_red,
			bright_red = p.fg_term_red_bright,
			green = p.fg_term_green,
			bright_green = p.fg_term_green_bright,
			yellow = p.fg_term_yellow,
			bright_yellow = p.fg_term_yellow_bright,
			blue = p.fg_term_blue,
			bright_blue = p.fg_term_blue_bright,
			magenta = p.fg_term_magenta,
			bright_magenta = p.fg_term_magenta_bright,
			cyan = p.fg_term_cyan,
			bright_cyan = p.fg_term_cyan_bright,
			white = p.fg_term_white,
			bright_white = p.fg_term_white_bright,
		},
	}

	return colors
end

return M
