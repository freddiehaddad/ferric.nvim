local M = {}

function M.get(p)
	return {
		TelescopeNormal = { fg = p.limestone, bg = p.quench_dark },
		TelescopeBorder = { fg = p.quench_edge, bg = p.quench_dark },
		TelescopePromptNormal = { fg = p.limestone, bg = p.quench_dark },
		TelescopePromptBorder = { fg = p.quench_edge, bg = p.quench_dark },
		TelescopePromptPrefix = { fg = p.copper },
		TelescopePromptCounter = { fg = p.slag },
		TelescopePromptTitle = { fg = p.copper, bold = true },
		TelescopeResultsNormal = { fg = p.slag, bg = p.quench_dark },
		TelescopeResultsTitle = { fg = p.copper, bold = true },
		TelescopePreviewTitle = { fg = p.copper, bold = true },
		TelescopePreviewLine = { bg = p.quench_bright },
		TelescopeSelection = { fg = p.limestone, bg = p.quench_bright, bold = true },
		TelescopeSelectionCaret = { fg = p.copper, bg = p.quench_bright },
		TelescopeMultiSelection = { fg = p.verdigris },
		TelescopeMultiIcon = { fg = p.verdigris },
		TelescopeMatching = { fg = p.cobalt, bold = true },
	}
end

return M
