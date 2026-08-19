local M = {}

function M.get(p)
	return {
		DiagnosticError = { fg = p.error },
		DiagnosticWarn = { fg = p.warning },
		DiagnosticInfo = { fg = p.info },
		DiagnosticHint = { fg = p.hint },
		DiagnosticOk = { fg = p.ok },
		DiagnosticSignError = { fg = p.error },
		DiagnosticSignWarn = { fg = p.warning },
		DiagnosticSignInfo = { fg = p.info },
		DiagnosticSignHint = { fg = p.hint },
		DiagnosticSignOk = { fg = p.ok },
		DiagnosticUnderlineError = { sp = p.error, undercurl = true },
		DiagnosticUnderlineWarn = { sp = p.warning, undercurl = true },
		DiagnosticUnderlineInfo = { sp = p.info, undercurl = true },
		DiagnosticUnderlineHint = { sp = p.hint, undercurl = true },
		DiagnosticUnderlineOk = { sp = p.ok, undercurl = true },
		DiagnosticDeprecated = { fg = p.grey, strikethrough = true },
		DiagnosticUnnecessary = { fg = p.line_number },
		VirtualTextError = { link = "DiagnosticError" },
		VirtualTextWarning = { link = "DiagnosticWarn" },
		VirtualTextInfo = { link = "DiagnosticInfo" },
		VirtualTextHint = { link = "DiagnosticHint" },
	}
end

return M
