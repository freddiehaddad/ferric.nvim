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
		Normal = { fg = p.limestone },
		Bold = { bold = true },
		Italic = { italic = true },
		Underlined = { underline = true },
		Cursor = { fg = p.void, bg = p.limestone },
		CursorIM = { fg = p.void, bg = p.rust },
		lCursor = { fg = p.void, bg = p.rust },
		CursorLine = { bg = p.crucible },
		CursorColumn = { bg = p.crucible },
		CursorLineNr = { fg = p.rust, bg = p.crucible },
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
		--
		-- Each MarkviewPaletteN color slot maps to one of ferric's syntax tones,
		-- aligned with the existing markdownH1-H6 progression so the plugin's
		-- semantic links (callouts, checkboxes, list bullets) inherit naturally.
		--
		-- Slot semantics (from plugin source):
		--   0 = neutral/default  (Comment-like)        slag
		--   1 = error            (H1, Unchecked)       rust
		--   2 = warn             (H2, Pending, ListMinus)   copper
		--   3 = special          (H3, Subscript)       forge_amber
		--   4 = ok               (H4, Checked, ListPlus)    verdigris
		--   5 = note             (H5, Info)            cobalt
		--   6 = hint             (H6, Progress, ListStar, Superscript)  patina
		--   7 = conditional      (#tags, [[wikilinks]], ==highlights==) oxidized
		--
		-- Each slot N produces 4 sibling groups:
		--   PaletteN     -- fg + bg, used as `hl_group` on spans or `line_hl_group` on lines
		--   PaletteNFg   -- fg only, for icons / border chars / virt_text
		--   PaletteNBg   -- bg only, for HTML heading node spans
		--   PaletteNSign -- fg only, for sign column glyphs
		--
		-- Backgrounds are uniformly `smelt` so heading lines, ==highlights==,
		-- and #tag pills sit on the same subtle warm band rather than rainbow.
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

		-- Headings: link applies palette fg+bg as the heading line bg
		-- (`line_hl_group`) and as the icon char's fg+bg. Sign variants are
		-- fg-only for the sign column glyph.
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

		-- Code blocks:
		--   MarkviewCode       -- bg only; painted as `line_hl_group` over the
		--                         entire code body, padding spaces, and top/bottom
		--                         delimiter lines.
		--   MarkviewCodeInfo   -- inherits Code's bg and adds Comment-like fg;
		--                         used for the language label text so it visually
		--                         sits inside the code block rectangle.
		--   MarkviewCodeFg     -- fg-only group whose fg equals MarkviewCode's bg;
		--                         used for half-block chars (▄ ▀) so frontmatter
		--                         borders appear to extend the code surface into
		--                         the surrounding text.
		--   MarkviewInlineCode -- fg + bg; the inline `code` "pill".
		MarkviewCode = { bg = p.smelt },
		MarkviewCodeInfo = { fg = p.slag, bg = p.smelt },
		MarkviewCodeFg = { fg = p.smelt },
		MarkviewInlineCode = { bg = p.smelt },

		-- Block quotes / callouts: fg-only — applied to the `▋` border char,
		-- the callout icon glyph, and the callout title text span.
		MarkviewBlockQuoteDefault = { link = "MarkviewPalette0Fg" },
		MarkviewBlockQuoteError = { link = "MarkviewPalette1Fg" },
		MarkviewBlockQuoteWarn = { link = "MarkviewPalette2Fg" },
		MarkviewBlockQuoteSpecial = { link = "MarkviewPalette3Fg" },
		MarkviewBlockQuoteOk = { link = "MarkviewPalette4Fg" },
		MarkviewBlockQuoteNote = { link = "MarkviewPalette5Fg" },

		-- Checkboxes: fg-only — applied to the checkbox icon glyph and (for
		-- checked/unchecked/cancelled) the trailing scope text.
		MarkviewCheckboxCancelled = { link = "MarkviewPalette0Fg" },
		MarkviewCheckboxUnchecked = { link = "MarkviewPalette1Fg" },
		MarkviewCheckboxPending = { link = "MarkviewPalette2Fg" },
		MarkviewCheckboxChecked = { link = "MarkviewPalette4Fg" },
		MarkviewCheckboxProgress = { link = "MarkviewPalette6Fg" },
		MarkviewCheckboxStriked = { fg = p.slag, strikethrough = true },

		-- List bullets: fg-only — virt_text replacement char (●, ◈, ◇).
		MarkviewListItemMinus = { link = "MarkviewPalette2Fg" },
		MarkviewListItemPlus = { link = "MarkviewPalette4Fg" },
		MarkviewListItemStar = { link = "MarkviewPalette6Fg" },

		-- Tables: all five border-related groups must share one color so the
		-- frame reads as a single line. The plugin uses MarkviewTableHeader
		-- for the top/header/separator border characters and MarkviewTableBorder
		-- for body/bottom/overlap border characters — *not* for header cell
		-- text, which is rendered normally by treesitter.
		MarkviewTableHeader = { fg = p.slag },
		MarkviewTableBorder = { fg = p.slag },
		MarkviewTableAlignLeft = { fg = p.slag },
		MarkviewTableAlignCenter = { fg = p.slag },
		MarkviewTableAlignRight = { fg = p.slag },

		-- Links / images / emails: fg + underline — applied to both the
		-- prefix icon glyph and the visible link label text.
		MarkviewHyperlink = { fg = p.cobalt, underline = true },
		MarkviewImage = { fg = p.cobalt, underline = true },
		MarkviewEmail = { fg = p.cobalt, underline = true },

		-- Subscript / superscript: fg-only — bracket chars + scope text.
		MarkviewSubscript = { link = "MarkviewPalette3Fg" },
		MarkviewSuperscript = { link = "MarkviewPalette6Fg" },

		-- Code block language icons: bg matches MarkviewCode so the label
		-- (icon + language name virt_text) sits visually inside the code
		-- block rectangle; fg distinguishes the language by palette slot.
		MarkviewIcon0 = { fg = p.slag, bg = p.smelt },
		MarkviewIcon1 = { fg = p.rust, bg = p.smelt },
		MarkviewIcon2 = { fg = p.copper, bg = p.smelt },
		MarkviewIcon3 = { fg = p.forge_amber, bg = p.smelt },
		MarkviewIcon4 = { fg = p.verdigris, bg = p.smelt },
		MarkviewIcon5 = { fg = p.cobalt, bg = p.smelt },
		MarkviewIcon6 = { fg = p.patina, bg = p.smelt },

		-- Plugin-bug shims: these groups are referenced by the plugin's
		-- default config but never created by it, so without these aliases
		-- the corresponding decorations fall back to default text color.
		MarkviewIcon3Fg = { link = "MarkviewPalette3Fg" }, -- horizontal_rules center icon
		MarkviewSpecial = { link = "Special" },            -- latex.fonts.default.hl
		MarkviewComment = { link = "Comment" },            -- latex.symbols.hl

		-- MarkviewGradient0..9 are intentionally NOT defined here. The plugin
		-- generates them dynamically by interpolating from `Normal` bg to
		-- `Title` fg in Oklab space, producing a gradient that adapts to the
		-- terminal's actual background (Title fg = verdigris in ferric).

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
		FzfLuaCursorLineNr = { fg = p.rust, bg = p.crucible },
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

		-- Telescope
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
		TelescopeSelectionCaret = { fg = p.rust, bg = p.quench_bright },
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
		BlinkCmpKindConstructor = { fg = p.copper },
		BlinkCmpKindClass = { fg = p.copper },
		BlinkCmpKindInterface = { fg = p.copper },
		BlinkCmpKindStruct = { fg = p.copper },
		BlinkCmpKindEnum = { fg = p.copper },
		BlinkCmpKindTypeParameter = { fg = p.copper },
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
