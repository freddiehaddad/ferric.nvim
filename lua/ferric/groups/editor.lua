local M = {}

function M.get(p)
	return {
		-- Links
		Boolean = { link = "Constant" },
		CursorLineFold = { fg = p.tarnish, bg = p.crucible },
		CursorLineSign = { bg = p.crucible },
		Debug = { link = "Special" },
		Define = { link = "PreProc" },
		Float = { link = "Constant" },
		Ignore = { link = "Comment" },
		IncSearch = { link = "CurSearch" },
		LineNrAbove = { link = "LineNr" },
		LineNrBelow = { link = "LineNr" },
		Number = { link = "Constant" },
		PopupNotification = { link = "WarningMsg" },
		PreCondit = { link = "PreProc" },
		SpecialChar = { link = "Special" },
		SpecialComment = { link = "Special" },
		SpecialKey = { link = "NonText" },
		StatusLineTerm = { link = "StatusLine" },
		StatusLineTermNC = { link = "StatusLineNC" },
		Terminal = { link = "Normal" },
		Typedef = { link = "Type" },

		-- Editor
		Normal = { fg = p.limestone, bg = p.void },
		Bold = { bold = true },
		Italic = { italic = true },
		Underlined = { underline = true },
		Cursor = { fg = p.void, bg = p.limestone },
		CursorIM = { fg = p.void, bg = p.copper },
		lCursor = { fg = p.void, bg = p.copper },
		CursorLine = { bg = p.crucible },
		CursorColumn = { bg = p.crucible },
		CursorLineNr = { fg = p.copper, bg = p.crucible, bold = true },
		LineNr = { fg = p.mill_scale },
		SignColumn = { fg = p.mill_scale },
		ColorColumn = { bg = p.smelt },
		EndOfBuffer = { fg = p.special },
		NonText = { fg = p.special },
		Conceal = { fg = p.muted },
		VertSplit = { fg = p.smelt },

		-- Floating windows
		NormalFloat = { fg = p.limestone, bg = p.quench_dark },
		FloatBorder = { fg = p.quench_edge, bg = p.quench_dark },
		FloatShadow = { bg = p.forge, blend = 80 },
		FloatShadowThrough = { bg = p.forge, blend = 100 },

		-- Window bar
		WinBar = { fg = p.tarnish, bg = p.quench_dark, bold = true },
		WinBarNC = { fg = p.tarnish, bg = p.quench_dark },

		-- Folds
		Folded = { fg = p.tarnish, bg = p.crucible },
		FoldColumn = { fg = p.tarnish },

		-- Search
		Search = { fg = p.void, bg = p.forge_amber },
		CurSearch = { fg = p.void, bg = p.copper },

		-- Selection
		Visual = { bg = p.alloy },
		VisualNOS = { bg = p.alloy, bold = true },
		MatchParen = { fg = p.copper, bg = p.alloy, bold = true },

		-- Popup menu
		Pmenu = { fg = p.limestone, bg = p.quench_dark },
		PmenuSel = { bg = p.quench_bright, bold = true },
		PmenuKind = { fg = p.copper },
		PmenuKindSel = { fg = p.copper, bold = true },
		PmenuMatch = { fg = p.cobalt, bold = true },
		PmenuMatchSel = { bold = true },
		PmenuExtra = { fg = p.slag },
		PmenuExtraSel = { fg = p.slag, bold = true },
		PmenuSbar = {},
		PmenuThumb = { bg = p.quench_mid },

		-- Status line
		StatusLine = { fg = p.limestone },
		StatusLineNC = { fg = p.slag },

		-- Tab line
		TabLineFill = { bg = p.forge },
		TabLine = { fg = p.slag, bg = p.forge },
		TabLineSel = { fg = p.limestone },

		-- Title bar
		TitleBar = { fg = p.limestone },
		TitleBarNC = { fg = p.slag },

		-- Wild menu
		WildMenu = { bg = p.alloy },

		-- Messages
		ModeMsg = { fg = p.limestone, bold = true },
		MoreMsg = { fg = p.forge_amber },
		Question = { fg = p.copper },
		ErrorMsg = { fg = p.rust, bold = true },
		WarningMsg = { fg = p.forge_amber },

		-- Toolbar
		ToolbarButton = { fg = p.limestone },
		ToolbarLine = {},

		-- Title
		Title = { fg = p.verdigris, bold = true },
		Directory = { fg = p.cobalt },
		Tag = { fg = p.copper, bold = true },

		-- VCS state
		Added = { fg = p.verdigris },
		Changed = { fg = p.forge_amber },
		Removed = { fg = p.brick },

		-- Diff
		DiffAdd = { bg = p.quench },
		DiffChange = { bg = p.temper },
		DiffDelete = { bg = p.scale },
		DiffText = { fg = p.void, bg = p.forge_amber },

		-- Spell
		SpellBad = { sp = p.rust, undercurl = true },
		SpellCap = { sp = p.cobalt, undercurl = true },
		SpellLocal = { sp = p.patina, undercurl = true },
		SpellRare = { sp = p.ember, undercurl = true },

		-- Quickfix
		QuickFixLine = { bg = p.crucible, bold = true },
		qfFileName = { fg = p.cobalt },
		qfLineNr = { fg = p.forge_amber },

		-- Debug
		debugPC = { bg = p.forge },
		debugBreakpoint = { fg = p.rust, bg = p.forge },
	}
end

return M
