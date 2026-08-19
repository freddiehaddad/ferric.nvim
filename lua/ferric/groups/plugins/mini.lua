local M = {}

function M.get(p)
	return {
		-- mini.statusline
		MiniStatuslineModeNormal = { fg = p.bg, bg = p.ui_accent, bold = true },
		MiniStatuslineModeInsert = { fg = p.bg, bg = p.ok, bold = true },
		MiniStatuslineModeVisual = { fg = p.bg, bg = p.type, bold = true },
		MiniStatuslineModeReplace = { fg = p.bg, bg = p.error, bold = true },
		MiniStatuslineModeCommand = { fg = p.bg, bg = p.warning, bold = true },
		MiniStatuslineModeOther = { fg = p.bg, bg = p.info, bold = true },
		MiniStatuslineDevinfo = { fg = p.grey_light, bg = p.bg_alt },
		MiniStatuslineFilename = { fg = p.fg, bg = p.bg_alt },
		MiniStatuslineFileinfo = { fg = p.grey_light, bg = p.bg_alt },
		MiniStatuslineInactive = { fg = p.grey, bg = p.bg_alt },

		-- mini.starter
		MiniStarterHeader = { fg = p.grey_light },
		MiniStarterFooter = { fg = p.grey },
		MiniStarterSection = { fg = p.grey_pale, bold = true },
		MiniStarterItem = { fg = p.fg },
		MiniStarterItemBullet = { fg = p.line_number },
		MiniStarterItemPrefix = { fg = p.ui_accent, bold = true },
		MiniStarterCurrent = { fg = p.fg, bg = p.bg_soft, bold = true },
		MiniStarterQuery = { fg = p.ui_accent, bold = true },
		MiniStarterInactive = { link = "Comment" },
	}
end

return M
