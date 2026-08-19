local M = {}

function M.get(p)
	return {
		TelescopeNormal = { fg = p.fg, bg = p.float_bg },
		TelescopeBorder = { fg = p.border, bg = p.float_bg },
		TelescopePromptNormal = { fg = p.fg, bg = p.float_bg },
		TelescopePromptBorder = { fg = p.border, bg = p.float_bg },
		TelescopePromptPrefix = { fg = p.ui_accent },
		TelescopePromptCounter = { fg = p.grey_light },
		TelescopePromptTitle = { fg = p.ui_accent, bold = true },
		TelescopeResultsNormal = { fg = p.grey_mid, bg = p.float_bg },
		TelescopeResultsBorder = { fg = p.border, bg = p.float_bg },
		TelescopeResultsTitle = { fg = p.ui_accent, bold = true },
		TelescopePreviewNormal = { fg = p.fg, bg = p.float_bg },
		TelescopePreviewBorder = { fg = p.border, bg = p.float_bg },
		TelescopePreviewTitle = { fg = p.ui_accent, bold = true },
		TelescopePreviewLine = { bg = p.selection },
		TelescopeSelection = { fg = p.fg, bg = p.selection, bold = true },
		TelescopeSelectionCaret = { fg = p.ui_accent, bg = p.selection },
		TelescopeMultiSelection = { fg = p.ok, bg = p.diff_add },
		TelescopeMultiIcon = { fg = p.ok },
		TelescopeMatching = { fg = p.ui_accent, bold = true },
	}
end

return M
