local M = {}

--- Get the semantic colors of a variant
--- @param variant theme.Variant
--- @return theme.Colors
function M.get(variant)
	--- @type theme.Palette
	local p = require("modus.palettes." .. variant)

	--- @type theme.Colors
	local c = {}

	-- Backgrounds
	c.bg = p.bg_main
	c.bg_dim = p.bg_dim
	c.bg_active = p.bg_active
	c.bg_inactive = p.bg_inactive
	c.bg_popup = p.bg_popup

	-- Foregrounds
	c.fg = p.fg_main
	c.fg_dim = p.fg_dim
	c.fg_alt = p.fg_alt

	-- Editor
	c.border = p.border
	c.cursor = p.cursor
	c.cursorline = p.bg_hl_line
	c.visual = p.bg_region
	c.visual_fg = p.fg_region
	c.selection = p.bg_completion
	c.gutter = p.fringe
	c.line_number = p.fg_line_number_inactive
	c.line_number_current = p.fg_line_number_active
	c.line_number_current_bg = p.bg_line_number_active
	c.statusline = p.fg_mode_line_active
	c.statusline_bg = p.bg_mode_line_active
	c.statusline_nc = p.fg_mode_line_inactive
	c.statusline_nc_bg = p.bg_mode_line_inactive
	c.tabline_bg = p.bg_tab_bar
	c.tabline_current_bg = p.bg_tab_current
	c.tabline_other_bg = p.bg_tab_other
	c.paren_match = p.fg_paren_match
	c.paren_match_bg = p.bg_paren_match
	c.directory = p.accent_0
	c.prompt = p.fg_prompt
	c.keybind = p.keybind
	c.whitespace = p.fg_space
	c.whitespace_error_bg = p.bg_space_err
	c.ghost_text = p.fg_dim
	c.markup_code = p.fg_prose_code
	c.markup_code_bg = p.bg_prose_block_contents
	c.markup_table = p.prose_table
	c.headings = {
		p.fg_heading_1,
		p.fg_heading_2,
		p.fg_heading_3,
		p.fg_heading_4,
		p.fg_heading_5,
		p.fg_heading_6,
	}

	-- Code
	c.keyword = p.keyword
	c.builtin = p.builtin
	c.string = p.string
	c.docstring = p.docstring
	c.docmarkup = p.docmarkup
	c.number = p.number
	c.constant = p.constant
	c.func = p.fnname
	c.func_call = p.fnname_call
	c.variable = p.variable
	c.property = p.property
	c.type = p.type
	c.comment = p.comment
	c.preprocessor = p.preprocessor
	c.operator = p.operator
	c.punctuation = p.punctuation
	c.bracket = p.bracket
	c.delimiter = p.delimiter
	c.regex_backslash = p.rx_backslash
	c.regex_construct = p.rx_construct

	-- Diagnostics
	c.error = p.err
	c.warning = p.warning
	c.info = p.info
	c.hint = p.fg_dim
	c.ok = p.info
	c.underline_error = p.underline_err
	c.underline_warning = p.underline_warning
	c.underline_note = p.underline_note

	-- Search
	c.search_current = p.fg_search_current
	c.search_current_bg = p.bg_search_current
	c.search_lazy = p.fg_search_lazy
	c.search_lazy_bg = p.bg_search_lazy
	c.search_replace = p.fg_search_replace
	c.search_replace_bg = p.bg_search_replace
	c.match = p.fg_completion_match_0

	-- Shared Git and diff colors
	c.changes = {
		add = {
			fg = p.fg_added,
			sign = p.fg_added_intense,
			line_bg = p.bg_added,
			text_bg = p.bg_added_refine,
		},
		change = {
			fg = p.fg_changed,
			sign = p.fg_changed_intense,
			line_bg = p.bg_changed,
			text_bg = p.bg_changed_refine,
		},
		delete = {
			fg = p.fg_removed,
			sign = p.fg_removed_intense,
			line_bg = p.bg_removed,
			text_bg = p.bg_removed_refine,
		},
	}

	-- Special elements
	c.todo = p.prose_todo
	c.link = p.fg_link
	c.link_symbolic = p.fg_link_symbolic
	c.none = "NONE"

	-- Terminal
	c.terminal = {
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
	}

	return c
end

return M
