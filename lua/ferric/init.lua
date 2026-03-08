--- @diagnostic disable: undefined-global

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

local palettes = require("ferric.palettes")

local function get_groups()
	local config = Ferric.config
	local light = vim.o.background == "light"
	local p = vim.deepcopy(palettes[vim.o.background] or palettes.dark)

	for color, hex in pairs(config.palette_overrides) do
		p[color] = hex
	end

	if config.terminal_colors then
		local term_colors = {
			light and p.limestone or p.void,  -- 0  black
			p.brick,                          -- 1  red
			p.verdigris,                      -- 2  green
			p.forge_amber,                    -- 3  yellow
			p.cobalt,                         -- 4  blue
			p.oxidized,                       -- 5  magenta
			p.patina,                         -- 6  cyan
			light and p.forge or p.limestone, -- 7  white
			light and p.tarnish or p.slag,    -- 8  bright black
			p.bright_rust,                    -- 9  bright red
			p.bright_verdigris,               -- 10 bright green
			p.bright_amber,                   -- 11 bright yellow
			p.bright_cobalt,                  -- 12 bright blue
			p.bright_ember,                   -- 13 bright magenta
			p.bright_patina,                  -- 14 bright cyan
			p.bright_limestone,               -- 15 bright white
		}

		for index, color in ipairs(term_colors) do
			vim.g["terminal_color_" .. index - 1] = color
		end
	end

	local groups = {
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
		Normal = light and { fg = p.limestone, bg = p.void } or { fg = p.limestone, bg = p.void },
		Bold = { bold = true },
		Italic = { italic = true },
		Underlined = { underline = true },
		Cursor = { fg = p.void, bg = p.limestone },
		CursorIM = { fg = p.void, bg = p.rust },
		lCursor = { fg = p.void, bg = p.rust },
		CursorLine = { bg = p.crucible },
		CursorColumn = { bg = p.crucible },
		CursorLineNr = { fg = p.rust, bg = p.crucible, bold = true },
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
		Tag = { fg = p.rust, bold = true },

		-- VCS state
		Added = { fg = p.verdigris },
		Changed = { fg = p.forge_amber },
		Removed = { fg = p.brick },

		-- Gitsigns (staged signs match unstaged — icons distinguish them)
		GitSignsStagedAdd = { link = "Added" },
		GitSignsStagedChange = { link = "Changed" },
		GitSignsStagedDelete = { link = "Removed" },
		GitSignsStagedChangedelete = { link = "Changed" },
		GitSignsStagedTopdelete = { link = "Removed" },
		GitSignsStagedUntracked = { link = "Added" },
		GitSignsStagedAddNr = { link = "Added" },
		GitSignsStagedChangeNr = { link = "Changed" },
		GitSignsStagedDeleteNr = { link = "Removed" },
		GitSignsStagedChangedeleteNr = { link = "Changed" },
		GitSignsStagedTopdeleteNr = { link = "Removed" },
		GitSignsStagedUntrackedNr = { link = "Added" },
		GitSignsStagedAddCul = { link = "Added" },
		GitSignsStagedChangeCul = { link = "Changed" },
		GitSignsStagedDeleteCul = { link = "Removed" },
		GitSignsStagedChangedeleteCul = { link = "Changed" },
		GitSignsStagedTopdeleteCul = { link = "Removed" },
		GitSignsStagedUntrackedCul = { link = "Added" },
		GitSignsStagedAddLn = { link = "DiffAdd" },
		GitSignsStagedChangeLn = { link = "DiffChange" },
		GitSignsStagedChangedeleteLn = { link = "DiffChange" },
		GitSignsStagedUntrackedLn = { link = "DiffAdd" },

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
		PreProc = { fg = p.oxidized },
		Include = { fg = p.oxidized },
		Macro = { fg = p.oxidized },
		Type = { fg = p.patina },
		StorageClass = { fg = p.patina },
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

		-- DAP
		DapStoppedSign = { fg = p.verdigris, bg = p.crucible },

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

		-- markview.nvim
		MarkviewPalette0 = { fg = p.slag, bg = p.smelt },
		MarkviewPalette0Fg = { fg = p.slag },
		MarkviewPalette0Bg = { bg = p.smelt },
		MarkviewPalette0Sign = { fg = p.slag },
		MarkviewPalette1 = { fg = p.rust, bg = p.smelt },
		MarkviewPalette1Fg = { fg = p.rust },
		MarkviewPalette1Bg = { bg = p.smelt },
		MarkviewPalette1Sign = { fg = p.rust },
		MarkviewPalette2 = { fg = p.copper, bg = p.smelt },
		MarkviewPalette2Fg = { fg = p.copper },
		MarkviewPalette2Bg = { bg = p.smelt },
		MarkviewPalette2Sign = { fg = p.copper },
		MarkviewPalette3 = { fg = p.forge_amber, bg = p.smelt },
		MarkviewPalette3Fg = { fg = p.forge_amber },
		MarkviewPalette3Bg = { bg = p.smelt },
		MarkviewPalette3Sign = { fg = p.forge_amber },
		MarkviewPalette4 = { fg = p.verdigris, bg = p.smelt },
		MarkviewPalette4Fg = { fg = p.verdigris },
		MarkviewPalette4Bg = { bg = p.smelt },
		MarkviewPalette4Sign = { fg = p.verdigris },
		MarkviewPalette5 = { fg = p.cobalt, bg = p.smelt },
		MarkviewPalette5Fg = { fg = p.cobalt },
		MarkviewPalette5Bg = { bg = p.smelt },
		MarkviewPalette5Sign = { fg = p.cobalt },
		MarkviewPalette6 = { fg = p.patina, bg = p.smelt },
		MarkviewPalette6Fg = { fg = p.patina },
		MarkviewPalette6Bg = { bg = p.smelt },
		MarkviewPalette6Sign = { fg = p.patina },
		MarkviewPalette7 = { fg = p.oxidized, bg = p.smelt },
		MarkviewPalette7Fg = { fg = p.oxidized },
		MarkviewPalette7Bg = { bg = p.smelt },
		MarkviewPalette7Sign = { fg = p.oxidized },
		MarkviewHeading1 = { link = "MarkviewPalette1" },
		MarkviewHeading2 = { link = "MarkviewPalette2" },
		MarkviewHeading3 = { link = "MarkviewPalette3" },
		MarkviewHeading4 = { link = "MarkviewPalette4" },
		MarkviewHeading5 = { link = "MarkviewPalette5" },
		MarkviewHeading6 = { link = "MarkviewPalette6" },
		MarkviewHeading1Sign = { link = "MarkviewPalette1Sign" },
		MarkviewHeading2Sign = { link = "MarkviewPalette2Sign" },
		MarkviewHeading3Sign = { link = "MarkviewPalette3Sign" },
		MarkviewHeading4Sign = { link = "MarkviewPalette4Sign" },
		MarkviewHeading5Sign = { link = "MarkviewPalette5Sign" },
		MarkviewHeading6Sign = { link = "MarkviewPalette6Sign" },
		MarkviewCode = { bg = p.smelt },
		MarkviewCodeInfo = { fg = p.slag, bg = p.smelt },
		MarkviewCodeFg = { fg = p.smelt },
		MarkviewInlineCode = { bg = p.smelt },
		MarkviewBlockQuoteDefault = { link = "MarkviewPalette0Fg" },
		MarkviewBlockQuoteError = { link = "MarkviewPalette1Fg" },
		MarkviewBlockQuoteWarn = { link = "MarkviewPalette2Fg" },
		MarkviewBlockQuoteSpecial = { link = "MarkviewPalette3Fg" },
		MarkviewBlockQuoteOk = { link = "MarkviewPalette4Fg" },
		MarkviewBlockQuoteNote = { link = "MarkviewPalette5Fg" },
		MarkviewCheckboxCancelled = { link = "MarkviewPalette0Fg" },
		MarkviewCheckboxUnchecked = { link = "MarkviewPalette1Fg" },
		MarkviewCheckboxPending = { link = "MarkviewPalette2Fg" },
		MarkviewCheckboxChecked = { link = "MarkviewPalette4Fg" },
		MarkviewCheckboxProgress = { link = "MarkviewPalette6Fg" },
		MarkviewCheckboxStriked = { fg = p.slag, strikethrough = true },
		MarkviewListItemMinus = { link = "MarkviewPalette2Fg" },
		MarkviewListItemPlus = { link = "MarkviewPalette4Fg" },
		MarkviewListItemStar = { link = "MarkviewPalette6Fg" },
		MarkviewTableHeader = { fg = p.slag },
		MarkviewTableBorder = { fg = p.slag },
		MarkviewTableAlignLeft = { fg = p.slag },
		MarkviewTableAlignCenter = { fg = p.slag },
		MarkviewTableAlignRight = { fg = p.slag },
		MarkviewHyperlink = { fg = p.cobalt, underline = true },
		MarkviewImage = { fg = p.cobalt, underline = true },
		MarkviewEmail = { fg = p.cobalt, underline = true },
		MarkviewSubscript = { link = "MarkviewPalette3Fg" },
		MarkviewSuperscript = { link = "MarkviewPalette6Fg" },
		MarkviewIcon0 = { fg = p.slag, bg = p.smelt },
		MarkviewIcon1 = { fg = p.rust, bg = p.smelt },
		MarkviewIcon2 = { fg = p.copper, bg = p.smelt },
		MarkviewIcon3 = { fg = p.forge_amber, bg = p.smelt },
		MarkviewIcon4 = { fg = p.verdigris, bg = p.smelt },
		MarkviewIcon5 = { fg = p.cobalt, bg = p.smelt },
		MarkviewIcon6 = { fg = p.patina, bg = p.smelt },
		MarkviewIcon3Fg = { link = "MarkviewPalette3Fg" },
		MarkviewSpecial = { link = "Special" },
		MarkviewComment = { link = "Comment" },

		-- render-markdown.nvim
		RenderMarkdownH1 = { link = "MarkviewPalette1Fg" },
		RenderMarkdownH2 = { link = "MarkviewPalette2Fg" },
		RenderMarkdownH3 = { link = "MarkviewPalette3Fg" },
		RenderMarkdownH4 = { link = "MarkviewPalette4Fg" },
		RenderMarkdownH5 = { link = "MarkviewPalette5Fg" },
		RenderMarkdownH6 = { link = "MarkviewPalette6Fg" },
		RenderMarkdownH1Bg = { link = "MarkviewPalette1Bg" },
		RenderMarkdownH2Bg = { link = "MarkviewPalette2Bg" },
		RenderMarkdownH3Bg = { link = "MarkviewPalette3Bg" },
		RenderMarkdownH4Bg = { link = "MarkviewPalette4Bg" },
		RenderMarkdownH5Bg = { link = "MarkviewPalette5Bg" },
		RenderMarkdownH6Bg = { link = "MarkviewPalette6Bg" },
		RenderMarkdownCode = { link = "MarkviewCode" },
		RenderMarkdownCodeInfo = { link = "MarkviewCodeInfo" },
		RenderMarkdownCodeBorder = { link = "MarkviewCode" },
		RenderMarkdownCodeFallback = { link = "Normal" },
		RenderMarkdownCodeInline = { link = "MarkviewInlineCode" },
		RenderMarkdownTableHead = { link = "MarkviewTableHeader" },
		RenderMarkdownTableRow = { link = "MarkviewTableBorder" },
		RenderMarkdownTableFill = { link = "Conceal" },
		RenderMarkdownLink = { link = "MarkviewHyperlink" },
		RenderMarkdownLinkTitle = { link = "MarkviewHyperlink" },
		RenderMarkdownWikiLink = { link = "MarkviewHyperlink" },
		RenderMarkdownUnchecked = { link = "MarkviewCheckboxUnchecked" },
		RenderMarkdownChecked = { link = "MarkviewCheckboxChecked" },
		RenderMarkdownTodo = { link = "MarkviewCheckboxPending" },
		RenderMarkdownQuote = { link = "MarkviewBlockQuoteDefault" },
		RenderMarkdownQuote1 = { link = "MarkviewBlockQuoteDefault" },
		RenderMarkdownQuote2 = { link = "MarkviewBlockQuoteDefault" },
		RenderMarkdownQuote3 = { link = "MarkviewBlockQuoteDefault" },
		RenderMarkdownQuote4 = { link = "MarkviewBlockQuoteDefault" },
		RenderMarkdownQuote5 = { link = "MarkviewBlockQuoteDefault" },
		RenderMarkdownQuote6 = { link = "MarkviewBlockQuoteDefault" },
		RenderMarkdownSuccess = { link = "MarkviewBlockQuoteOk" },
		RenderMarkdownInfo = { link = "MarkviewBlockQuoteNote" },
		RenderMarkdownHint = { link = "MarkviewBlockQuoteSpecial" },
		RenderMarkdownWarn = { link = "MarkviewBlockQuoteWarn" },
		RenderMarkdownError = { link = "MarkviewBlockQuoteError" },
		RenderMarkdownBullet = { link = "MarkviewListItemMinus" },
		RenderMarkdownDash = { link = "LineNr" },
		RenderMarkdownSign = { fg = p.slag },
		RenderMarkdownMath = { link = "MarkviewPalette3Fg" },
		RenderMarkdownIndent = { link = "Whitespace" },
		RenderMarkdownHtmlComment = { link = "Comment" },
		RenderMarkdownInlineHighlight = { link = "MarkviewInlineCode" },

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

		-- fzf-lua
		FzfLuaNormal = { fg = p.limestone, bg = p.quench_dark },
		FzfLuaBorder = { fg = p.quench_edge, bg = p.quench_dark },
		FzfLuaTitle = { fg = p.rust, bg = p.quench_dark, bold = true },
		FzfLuaTitleFlags = { fg = p.tarnish, bg = p.quench_dark },
		FzfLuaBackdrop = { bg = p.void },
		FzfLuaHelpNormal = { link = "FzfLuaNormal" },
		FzfLuaHelpBorder = { link = "FzfLuaBorder" },
		FzfLuaPreviewNormal = { fg = p.limestone, bg = p.quench_dark },
		FzfLuaPreviewBorder = { fg = p.quench_edge, bg = p.quench_dark },
		FzfLuaPreviewTitle = { fg = p.rust, bg = p.quench_dark, bold = true },
		FzfLuaCursor = { link = "Cursor" },
		FzfLuaCursorLine = { bg = p.crucible },
		FzfLuaCursorLineNr = { fg = p.rust, bg = p.crucible, bold = true },
		FzfLuaSearch = { link = "IncSearch" },
		FzfLuaScrollBorderEmpty = { link = "FzfLuaBorder" },
		FzfLuaScrollBorderFull = { link = "FzfLuaBorder" },
		FzfLuaScrollFloatEmpty = { link = "PmenuSbar" },
		FzfLuaScrollFloatFull = { bg = p.quench_mid },
		FzfLuaDirIcon = { link = "Directory" },
		FzfLuaDirPart = { link = "Comment" },
		FzfLuaFilePart = { fg = p.limestone },
		FzfLuaHeaderBind = { fg = p.copper },
		FzfLuaHeaderText = { fg = p.rust },
		FzfLuaPathColNr = { fg = p.patina },
		FzfLuaPathLineNr = { fg = p.verdigris },
		FzfLuaLivePrompt = { fg = p.rust },
		FzfLuaLiveSym = { fg = p.rust },
		FzfLuaBufId = { fg = p.slag },
		FzfLuaBufName = { link = "Directory" },
		FzfLuaBufLineNr = { link = "LineNr" },
		FzfLuaBufNr = { fg = p.tarnish },
		FzfLuaBufFlagCur = { fg = p.rust },
		FzfLuaBufFlagAlt = { fg = p.cobalt },
		FzfLuaTabTitle = { fg = p.copper, bold = true },
		FzfLuaTabMarker = { fg = p.verdigris, bold = true },
		FzfLuaCmdEx = { link = "Statement" },
		FzfLuaCmdBuf = { link = "Added" },
		FzfLuaCmdGlobal = { link = "Directory" },
		FzfLuaFzfNormal = { fg = p.slag, bg = p.quench_dark },
		FzfLuaFzfCursorLine = { fg = p.limestone, bg = p.quench_bright, bold = true },
		FzfLuaFzfMatch = { fg = p.cobalt, bold = true },
		FzfLuaFzfBorder = { link = "FzfLuaBorder" },
		FzfLuaFzfScrollbar = { link = "FzfLuaBorder" },
		FzfLuaFzfSeparator = { link = "FzfLuaBorder" },
		FzfLuaFzfGutter = { link = "FzfLuaNormal" },
		FzfLuaFzfHeader = { link = "FzfLuaTitle" },
		FzfLuaFzfInfo = { fg = p.slag },
		FzfLuaFzfPointer = { fg = p.rust },
		FzfLuaFzfMarker = { fg = p.verdigris },
		FzfLuaFzfSpinner = { fg = p.rust },
		FzfLuaFzfPrompt = { fg = p.rust },
		FzfLuaFzfQuery = { fg = p.limestone },

		-- telescope.nvim
		TelescopeNormal = { fg = p.limestone, bg = p.quench_dark },
		TelescopeBorder = { fg = p.quench_edge, bg = p.quench_dark },
		TelescopePromptNormal = { fg = p.limestone, bg = p.quench_dark },
		TelescopePromptBorder = { fg = p.quench_edge, bg = p.quench_dark },
		TelescopePromptPrefix = { fg = p.rust },
		TelescopePromptCounter = { fg = p.slag },
		TelescopePromptTitle = { fg = p.rust, bold = true },
		TelescopeResultsNormal = { fg = p.slag, bg = p.quench_dark },
		TelescopeResultsTitle = { fg = p.rust, bold = true },
		TelescopePreviewTitle = { fg = p.rust, bold = true },
		TelescopeSelection = { fg = p.limestone, bg = p.quench_bright, bold = true },
		TelescopeSelectionCaret = { fg = p.forge_amber, bg = p.quench_bright },
		TelescopeMultiSelection = { fg = p.verdigris },
		TelescopeMultiIcon = { fg = p.verdigris },
		TelescopeMatching = { fg = p.cobalt, bold = true },

		-- blink.cmp
		BlinkCmpMenu = { fg = p.limestone, bg = p.quench_dark },
		BlinkCmpMenuBorder = { fg = p.quench_edge, bg = p.quench_dark },
		BlinkCmpMenuSelection = { bg = p.quench_bright, bold = true },
		BlinkCmpScrollBarThumb = { bg = p.quench_mid },
		BlinkCmpScrollBarGutter = {},
		BlinkCmpLabel = { fg = p.limestone },
		BlinkCmpLabelMatch = { fg = p.cobalt, bold = true },
		BlinkCmpLabelDeprecated = { fg = p.slag, strikethrough = true },
		BlinkCmpLabelDetail = { fg = p.tarnish },
		BlinkCmpLabelDescription = { fg = p.tarnish },
		BlinkCmpSource = { fg = p.slag },
		BlinkCmpGhostText = { fg = p.special },
		BlinkCmpDoc = { fg = p.limestone, bg = p.quench_dark },
		BlinkCmpDocBorder = { fg = p.quench_edge, bg = p.quench_dark },
		BlinkCmpDocSeparator = { fg = p.smelt, bg = p.quench_dark },
		BlinkCmpDocCursorLine = { bg = p.temper },
		BlinkCmpSignatureHelp = { fg = p.limestone, bg = p.quench_dark },
		BlinkCmpSignatureHelpBorder = { fg = p.quench_edge, bg = p.quench_dark },
		BlinkCmpSignatureHelpActiveParameter = { fg = p.rust, bold = true },
		BlinkCmpKind = { fg = p.copper },
		BlinkCmpKindFunction = { fg = p.verdigris },
		BlinkCmpKindMethod = { fg = p.verdigris },
		BlinkCmpKindConstructor = { fg = p.patina },
		BlinkCmpKindClass = { fg = p.patina },
		BlinkCmpKindInterface = { fg = p.patina },
		BlinkCmpKindStruct = { fg = p.patina },
		BlinkCmpKindEnum = { fg = p.patina },
		BlinkCmpKindTypeParameter = { fg = p.patina },
		BlinkCmpKindVariable = { fg = p.limestone },
		BlinkCmpKindText = { fg = p.limestone },
		BlinkCmpKindModule = { fg = p.cobalt },
		BlinkCmpKindConstant = { fg = p.ember },
		BlinkCmpKindValue = { fg = p.ember },
		BlinkCmpKindEnumMember = { fg = p.ember },
		BlinkCmpKindKeyword = { fg = p.rust },
		BlinkCmpKindEvent = { fg = p.rust },
		BlinkCmpKindOperator = { fg = p.cast_iron },
		BlinkCmpKindProperty = { fg = p.tarnish },
		BlinkCmpKindField = { fg = p.tarnish },
		BlinkCmpKindSnippet = { fg = p.patina },
		BlinkCmpKindFile = { fg = p.cobalt },
		BlinkCmpKindFolder = { fg = p.cobalt },
		BlinkCmpKindColor = { fg = p.ember },
		BlinkCmpKindReference = { fg = p.ember },
		BlinkCmpKindUnit = { fg = p.cobalt },

		-- mini.statusline
		MiniStatuslineModeNormal = { fg = p.copper },
		MiniStatuslineModeInsert = { fg = p.rust },
		MiniStatuslineModeVisual = { fg = p.verdigris },
		MiniStatuslineModeReplace = { fg = p.brick },
		MiniStatuslineModeCommand = { fg = p.copper },
		MiniStatuslineModeOther = { fg = p.oxidized },
		MiniStatuslineDevinfo = { fg = p.tarnish },
		MiniStatuslineFilename = { fg = p.tarnish },
		MiniStatuslineFileinfo = { fg = p.tarnish },
		MiniStatuslineInactive = { fg = p.slag },

		-- mini.starter
		MiniStarterHeader = { fg = p.rust },
		MiniStarterFooter = { fg = p.rust },
		MiniStarterSection = { fg = p.copper, bold = true },
		MiniStarterItem = { fg = p.slag },
		MiniStarterItemBullet = { fg = p.mill_scale },
		MiniStarterItemPrefix = { fg = p.ember },
		MiniStarterCurrent = { fg = p.limestone, bg = p.crucible, bold = true },
		MiniStarterQuery = { fg = p.forge_amber, bold = true },
		MiniStarterInactive = { fg = p.special },

		-- Treesitter
		["@variable"] = { fg = p.limestone },
		["@variable.builtin"] = { fg = p.oxidized },
		["@number"] = { fg = p.cobalt },
		["@number.float"] = { fg = p.cobalt },
		["@function.builtin"] = { fg = p.oxidized },
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
