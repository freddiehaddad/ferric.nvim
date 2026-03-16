--- @class FerricConfig
--- @field terminal_colors boolean?
--- @field overrides table<string, table>?
--- @field palette_overrides table<string, string>?

local Ferric = {}

Ferric.config = {
	terminal_colors = true,
	palette_overrides = {},
	overrides = {},
}

local p = require("ferric.palette")

local function get_groups()
	local config = Ferric.config

	for color, hex in pairs(config.palette_overrides) do
		p[color] = hex
	end

	if config.terminal_colors then
		local term_colors = {
			p.void,
			p.brick,
			p.verdigris,
			p.forge_amber,
			p.cobalt,
			p.oxidized,
			p.patina,
			p.limestone,
			p.slag,
			p.bright_rust,
			p.bright_verdigris,
			p.bright_amber,
			p.bright_cobalt,
			p.bright_ember,
			p.bright_patina,
			p.bright_limestone,
		}

		for index, color in ipairs(term_colors) do
			vim.g["terminal_color_" .. index - 1] = color
		end
	end

	local groups = {
		-- Links
		Boolean = { link = "Constant" },
		CursorLineFold = { link = "FoldColumn" },
		CursorLineSign = { link = "SignColumn" },
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
		CursorIM = { fg = p.void, bg = p.rust },
		lCursor = { fg = p.void, bg = p.rust },
		CursorLine = { bg = p.crucible },
		CursorColumn = { bg = p.crucible },
		CursorLineNr = { fg = p.rust },
		LineNr = { fg = p.mill_scale },
		SignColumn = { fg = p.mill_scale },
		ColorColumn = { bg = p.forge },
		EndOfBuffer = { fg = p.special },
		NonText = { fg = p.special },
		Conceal = { fg = p.muted },
		VertSplit = { fg = p.smelt },

		-- Floating windows
		NormalFloat = { fg = p.limestone, bg = p.anvil },
		FloatShadow = { bg = p.forge, blend = 80 },
		FloatShadowThrough = { bg = p.forge, blend = 100 },

		-- Window bar
		WinBar = { fg = p.tarnish, bg = p.anvil, bold = true },
		WinBarNC = { fg = p.tarnish, bg = p.anvil },

		-- Folds
		Folded = { fg = p.tarnish, bg = p.crucible },
		FoldColumn = { fg = p.tarnish },

		-- Search
		Search = { fg = p.void, bg = p.forge_amber },
		CurSearch = { fg = p.void, bg = p.copper },

		-- Selection
		Visual = { bg = p.alloy },
		VisualNOS = { bg = p.alloy, bold = true },
		MatchParen = { bg = p.alloy, bold = true },

		-- Popup menu
		Pmenu = { fg = p.limestone, bg = p.anvil },
		PmenuSel = { bg = p.alloy, bold = true },
		PmenuKind = { fg = p.copper },
		PmenuKindSel = { fg = p.copper, bold = true },
		PmenuMatch = { fg = p.cobalt, bold = true },
		PmenuMatchSel = { bold = true },
		PmenuExtra = { fg = p.slag },
		PmenuExtraSel = { fg = p.slag, bold = true },
		PmenuSbar = { bg = p.anvil },
		PmenuThumb = { bg = p.mill_scale },

		-- Status line
		StatusLine = { fg = p.limestone },
		StatusLineNC = { fg = p.slag },

		-- Tab line
		TabLineFill = { bg = p.forge },
		TabLine = { fg = p.slag, bg = p.forge },
		TabLineSel = { fg = p.limestone, bg = p.void },

		-- Title bar
		TitleBar = { fg = p.limestone, bg = p.forge },
		TitleBarNC = { fg = p.slag, bg = p.void },

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
		Tag = { fg = p.rust, bold = true },

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

		-- Syntax
		Comment = { fg = p.slag },
		Constant = { fg = p.ember },
		Character = { fg = p.ember },
		String = { fg = p.forge_amber },
		Identifier = { fg = p.tarnish },
		Function = { fg = p.verdigris },
		Statement = { fg = p.rust },
		Conditional = { fg = p.rust },
		Repeat = { fg = p.rust },
		Label = { fg = p.rust },
		Exception = { fg = p.rust },
		Operator = { fg = p.cast_iron },
		Keyword = { fg = p.rust },
		PreProc = { fg = p.patina },
		Include = { fg = p.patina },
		Macro = { fg = p.patina },
		Type = { fg = p.copper },
		StorageClass = { fg = p.copper },
		Structure = { fg = p.patina },
		Special = { fg = p.copper },
		Delimiter = { fg = p.slag },
		Error = { fg = p.rust },
		Todo = { fg = p.void, bg = p.forge_amber, bold = true },
		PreInsert = { fg = p.slag },

		-- Quickfix
		QuickFixLine = { bg = p.crucible, bold = true },
		qfFileName = { fg = p.cobalt },
		qfLineNr = { fg = p.forge_amber },

		-- Debug
		debugPC = { bg = p.forge },
		debugBreakpoint = { fg = p.rust, bg = p.forge },

		-- Diff filetype
		diffAdded = { fg = p.verdigris },
		diffRemoved = { fg = p.brick },
		diffChanged = { fg = p.forge_amber },
		diffFile = { fg = p.copper },
		diffNewFile = { fg = p.forge_amber },
		diffOldFile = { fg = p.copper },
		diffLine = { fg = p.slag },
		diffIndexLine = { fg = p.patina },

		-- Markdown
		markdownH1 = { fg = p.rust },
		markdownH2 = { fg = p.copper },
		markdownH3 = { fg = p.forge_amber },
		markdownH4 = { fg = p.verdigris },
		markdownH5 = { fg = p.cobalt },
		markdownH6 = { fg = p.patina },
		markdownHeadingDelimiter = { fg = p.copper, bold = true },
		markdownCode = { fg = p.patina },
		markdownCodeBlock = { fg = p.patina },
		markdownLinkText = { fg = p.cobalt, underline = true },

		-- CSV
		csvCol0 = { fg = p.rust },
		csvCol1 = { fg = p.ember },
		csvCol2 = { fg = p.forge_amber },
		csvCol3 = { fg = p.verdigris },
		csvCol4 = { fg = p.patina },
		csvCol5 = { fg = p.cobalt },
		csvCol6 = { fg = p.copper },
		csvCol7 = { fg = p.tarnish },
		csvCol8 = { fg = p.oxidized },

		-- Telescope
		TelescopeNormal = { fg = p.limestone, bg = p.anvil },
		TelescopeBorder = { fg = p.anvil, bg = p.anvil },
		TelescopePromptNormal = { fg = p.limestone, bg = p.anvil },
		TelescopePromptBorder = { fg = p.anvil, bg = p.anvil },
		TelescopePromptPrefix = { fg = p.rust },
		TelescopePromptCounter = { fg = p.slag },
		TelescopePromptTitle = { fg = p.rust, bold = true },
		TelescopeResultsTitle = { fg = p.rust, bold = true },
		TelescopePreviewTitle = { fg = p.rust, bold = true },
		TelescopeSelection = { fg = p.limestone, bg = p.alloy, bold = true },
		TelescopeSelectionCaret = { fg = p.rust, bg = p.alloy },
		TelescopeMultiSelection = { fg = p.verdigris },
		TelescopeMultiIcon = { fg = p.verdigris },
		TelescopeMatching = { fg = p.cobalt, bold = true },

		-- Treesitter
		["@variable"] = { fg = p.limestone },
		["@variable.builtin"] = { fg = p.rust },
		["@number"] = { fg = p.cobalt },
		["@number.float"] = { fg = p.cobalt },
		["@function.builtin"] = { fg = p.patina },
		["@constant.builtin"] = { fg = p.ember },
		["@punctuation.special"] = { fg = p.cast_iron },

		-- Diagnostics
		DiagnosticError = { fg = p.rust },
		DiagnosticWarn = { fg = p.forge_amber },
		DiagnosticInfo = { fg = p.cobalt },
		DiagnosticHint = { fg = p.patina },
		DiagnosticOk = { fg = p.verdigris },
		DiagnosticUnderlineError = { sp = p.rust, undercurl = true },
		DiagnosticUnderlineWarn = { sp = p.forge_amber, undercurl = true },
		DiagnosticUnderlineInfo = { sp = p.cobalt, undercurl = true },
		DiagnosticUnderlineHint = { sp = p.patina, undercurl = true },
		DiagnosticUnderlineOk = { sp = p.verdigris, undercurl = true },
		DiagnosticDeprecated = { sp = p.rust, strikethrough = true },
	}

	for g, hl in pairs(config.overrides) do
		if groups[g] then
			groups[g].link = nil
		end

		groups[g] = vim.tbl_extend("force", groups[g] or {}, hl)
	end

	return groups
end

--- @param config FerricConfig?
Ferric.setup = function(config)
	Ferric.config = vim.tbl_extend("force", Ferric.config, config or {})
end

Ferric.load = function()
	if vim.version().minor < 8 then
		vim.notify_once("ferric.nvim: nvim 0.8 or higher is needed")
		return
	end

	if vim.g.colors_name then
		vim.cmd.hi("clear")
	end

	vim.g.colors_name = "ferric"
	vim.o.termguicolors = true

	local groups = get_groups()

	for group, settings in pairs(groups) do
		vim.api.nvim_set_hl(0, group, settings)
	end
end

return Ferric
