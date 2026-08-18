local M = {}

function M.get(p)
	return {
		-- mini.statusline
		MiniStatuslineModeNormal = { fg = p.void, bg = p.copper, bold = true },
		MiniStatuslineModeInsert = { fg = p.void, bg = p.cobalt, bold = true },
		MiniStatuslineModeVisual = { fg = p.void, bg = p.verdigris, bold = true },
		MiniStatuslineModeReplace = { fg = p.void, bg = p.forge_amber, bold = true },
		MiniStatuslineModeCommand = { fg = p.void, bg = p.patina, bold = true },
		MiniStatuslineModeOther = { fg = p.void, bg = p.oxidized, bold = true },
		MiniStatuslineDevinfo = { fg = p.tarnish },
		MiniStatuslineFilename = { fg = p.tarnish },
		MiniStatuslineFileinfo = { fg = p.tarnish },
		MiniStatuslineInactive = { fg = p.slag },

		-- mini.starter
		MiniStarterHeader = { fg = p.copper },
		MiniStarterFooter = { fg = p.copper },
		MiniStarterSection = { fg = p.copper, bold = true },
		MiniStarterItem = { fg = p.limestone },
		MiniStarterItemBullet = { fg = p.mill_scale },
		MiniStarterItemPrefix = { fg = p.copper, bold = true, underline = true },
		MiniStarterCurrent = { fg = p.limestone, bg = p.crucible, bold = true },
		MiniStarterQuery = { fg = p.cobalt, bold = true },
		MiniStarterInactive = { fg = p.special },
	}
end

return M
