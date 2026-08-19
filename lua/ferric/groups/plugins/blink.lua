local M = {}

local kind_links = {
	Array = "LspKindArray",
	Boolean = "LspKindBoolean",
	Class = "LspKindClass",
	Color = "LspKindColor",
	Constant = "LspKindConstant",
	Constructor = "LspKindConstructor",
	Enum = "LspKindEnum",
	EnumMember = "LspKindEnumMember",
	Event = "LspKindEvent",
	Field = "LspKindField",
	File = "LspKindFile",
	Folder = "LspKindFolder",
	Function = "LspKindFunction",
	Interface = "LspKindInterface",
	Key = "LspKindKey",
	Keyword = "LspKindKeyword",
	Method = "LspKindMethod",
	Module = "LspKindModule",
	Namespace = "LspKindNamespace",
	Null = "LspKindNull",
	Number = "LspKindNumber",
	Object = "LspKindObject",
	Operator = "LspKindOperator",
	Package = "LspKindPackage",
	Property = "LspKindProperty",
	Reference = "LspKindReference",
	Snippet = "LspKindSnippet",
	String = "LspKindString",
	Struct = "LspKindStruct",
	Text = "LspKindText",
	TypeParameter = "LspKindTypeParameter",
	Unit = "LspKindUnit",
	Value = "LspKindValue",
	Variable = "LspKindVariable",
}

function M.get(p)
	local groups = {
		BlinkCmpMenu = { fg = p.fg, bg = p.float_bg },
		BlinkCmpMenuBorder = { fg = p.border, bg = p.float_bg },
		BlinkCmpMenuSelection = { bg = p.selection },
		BlinkCmpScrollBarGutter = { bg = p.float_bg },
		BlinkCmpScrollBarThumb = { bg = p.scrollbar },
		BlinkCmpLabel = { fg = p.fg },
		BlinkCmpLabelMatch = { fg = p.ui_accent, bold = true },
		BlinkCmpLabelDetail = { fg = p.grey },
		BlinkCmpLabelDescription = { fg = p.grey },
		BlinkCmpLabelDeprecated = { fg = p.grey, strikethrough = true },
		BlinkCmpKind = { fg = p.func },
		BlinkCmpKindUnknown = { link = "BlinkCmpKind" },
		BlinkCmpSource = { fg = p.grey },
		BlinkCmpGhostText = { link = "Comment" },
		BlinkCmpDoc = { fg = p.fg, bg = p.float_bg },
		BlinkCmpDocBorder = { fg = p.border, bg = p.float_bg },
		BlinkCmpDocSeparator = { fg = p.border },
		BlinkCmpDocCursorLine = { bg = p.visual },
		BlinkCmpSignatureHelp = { fg = p.fg, bg = p.float_bg },
		BlinkCmpSignatureHelpBorder = { fg = p.border, bg = p.float_bg },
		BlinkCmpSignatureHelpActiveParameter = { fg = p.number, bold = true },
	}

	for kind, target in pairs(kind_links) do
		groups["BlinkCmpKind" .. kind] = { link = target }
	end

	for _, source in ipairs({ "Codeium", "Copilot", "Default", "Supermaven", "TabNine" }) do
		groups["BlinkCmpKind" .. source] = { fg = p.grey_pale }
	end

	return groups
end

return M
