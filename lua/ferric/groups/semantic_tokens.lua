local M = {}

local token_links = {
	["@lsp.type.boolean"] = "@boolean",
	["@lsp.type.builtinType"] = "@type.builtin",
	["@lsp.type.character"] = "@character",
	["@lsp.type.class"] = "@type",
	["@lsp.type.comment"] = "@comment",
	["@lsp.type.decorator"] = "@attribute",
	["@lsp.type.deriveHelper"] = "@attribute",
	["@lsp.type.enum"] = "@type",
	["@lsp.type.enumMember"] = "@constant",
	["@lsp.type.event"] = "Special",
	["@lsp.type.escapeSequence"] = "@string.escape",
	["@lsp.type.formatSpecifier"] = "SpecialChar",
	["@lsp.type.function"] = "@function",
	["@lsp.type.generic"] = "@variable",
	["@lsp.type.interface"] = "@type",
	["@lsp.type.keyword"] = "@keyword",
	["@lsp.type.label"] = "@label",
	["@lsp.type.lifetime"] = "@keyword.storage",
	["@lsp.type.macro"] = "@function.macro",
	["@lsp.type.method"] = "@function.method",
	["@lsp.type.modifier"] = "@keyword.modifier",
	["@lsp.type.namespace"] = "@module",
	["@lsp.type.number"] = "@number",
	["@lsp.type.operator"] = "@operator",
	["@lsp.type.parameter"] = "@variable.parameter",
	["@lsp.type.property"] = "@property",
	["@lsp.type.regexp"] = "@string.regexp",
	["@lsp.type.selfKeyword"] = "@variable.builtin",
	["@lsp.type.selfTypeKeyword"] = "@type.builtin",
	["@lsp.type.struct"] = "@type",
	["@lsp.type.type"] = "@type",
	["@lsp.type.typeAlias"] = "@type.definition",
	["@lsp.type.typeParameter"] = "@type",
	["@lsp.type.union"] = "@type",
	["@lsp.typemod.class.defaultLibrary"] = "@type.builtin",
	["@lsp.typemod.enum.defaultLibrary"] = "@type.builtin",
	["@lsp.typemod.enumMember.defaultLibrary"] = "@constant.builtin",
	["@lsp.typemod.function.defaultLibrary"] = "@function.builtin",
	["@lsp.typemod.keyword.async"] = "@keyword.coroutine",
	["@lsp.typemod.keyword.controlFlow"] = "@keyword",
	["@lsp.typemod.keyword.injected"] = "@keyword",
	["@lsp.typemod.macro.defaultLibrary"] = "@function.macro",
	["@lsp.typemod.macro.library"] = "@function.macro",
	["@lsp.typemod.method.defaultLibrary"] = "@function.builtin",
	["@lsp.typemod.method.defaultLibrary.rust"] = "Function",
	["@lsp.typemod.operator.injected"] = "@operator",
	["@lsp.typemod.string.injected"] = "@string",
	["@lsp.typemod.struct.defaultLibrary"] = "@type.builtin",
	["@lsp.typemod.struct.defaultLibrary.rust"] = "Type",
	["@lsp.type.builtinType.rust"] = "Type",
	["@lsp.typemod.variable.callable"] = "@function",
	["@lsp.typemod.variable.defaultLibrary"] = "@variable.builtin",
	["@lsp.typemod.variable.injected"] = "@variable",
	["@lsp.typemod.variable.static"] = "@constant",
}

local kind_links = {
	Array = "@type",
	Boolean = "@boolean",
	Class = "@type",
	Color = "Special",
	Constant = "@constant",
	Constructor = "@constructor",
	Enum = "@lsp.type.enum",
	EnumMember = "@lsp.type.enumMember",
	Event = "Special",
	Field = "@variable.member",
	File = "Normal",
	Folder = "Directory",
	Function = "@function",
	Interface = "@lsp.type.interface",
	Key = "@variable.member",
	Keyword = "@lsp.type.keyword",
	Method = "@function.method",
	Module = "@module",
	Namespace = "@module",
	Null = "@constant.builtin",
	Number = "@number",
	Object = "@type",
	Operator = "@operator",
	Package = "@module",
	Property = "@property",
	Reference = "@variable",
	Snippet = "Special",
	String = "@string",
	Struct = "@lsp.type.struct",
	Text = "@markup",
	TypeParameter = "@lsp.type.typeParameter",
	Unit = "@lsp.type.struct",
	Value = "@constant",
	Variable = "@variable",
}

function M.get(p)
	local groups = {
		["@lsp.mod.intraDocLink"] = { fg = p.link },
		["@lsp.type.property.terraform"] = {},
		["@lsp.type.string"] = {},
		["@lsp.type.variable"] = {},
	}

	for group, target in pairs(token_links) do
		groups[group] = { link = target }
	end

	for kind, target in pairs(kind_links) do
		groups["LspKind" .. kind] = { link = target }
	end

	return groups
end

return M
