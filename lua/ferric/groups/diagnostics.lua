local M = {}

function M.get(p)
	return {
		DiagnosticError = { fg = p.rust },
		DiagnosticWarn = { fg = p.forge_amber },
		DiagnosticInfo = { fg = p.cobalt },
		DiagnosticHint = { fg = p.patina },
		DiagnosticOk = { fg = p.verdigris },
		DiagnosticSignError = { fg = p.rust },
		DiagnosticSignWarn = { fg = p.forge_amber },
		DiagnosticSignInfo = { fg = p.cobalt },
		DiagnosticSignHint = { fg = p.patina },
		DiagnosticSignOk = { fg = p.verdigris },
		DiagnosticUnderlineError = { sp = p.rust, undercurl = true },
		DiagnosticUnderlineWarn = { sp = p.forge_amber, undercurl = true },
		DiagnosticUnderlineInfo = { sp = p.cobalt, undercurl = true },
		DiagnosticUnderlineHint = { sp = p.patina, undercurl = true },
		DiagnosticUnderlineOk = { sp = p.verdigris, undercurl = true },
		DiagnosticDeprecated = { sp = p.rust, strikethrough = true },
	}
end

return M
