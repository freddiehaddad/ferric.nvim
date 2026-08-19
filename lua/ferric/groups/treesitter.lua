local M = {}

local function link_all(groups, target, names)
	for _, name in ipairs(names) do
		groups[name] = { link = target }
	end
end

local function color_all(groups, color, names)
	for _, name in ipairs(names) do
		groups[name] = { fg = color }
	end
end

function M.get(p)
	local groups = {
		["@none"] = {},
		["@markup.emphasis"] = { italic = true },
		["@markup.italic"] = { italic = true },
		["@markup.strong"] = { bold = true },
		["@markup.strikethrough"] = { strikethrough = true },
		["@markup.underline"] = { underline = true },
		["@string.escape"] = { fg = p.signal },
		["@string.regexp"] = { fg = p.string },
		["@toml.tableKey"] = { fg = p.type },
		["@variable"] = { fg = p.fg },
		["@variable.member"] = { fg = p.fg },
		["@variable.parameter"] = { fg = p.parameter },
		["@variable.parameter.builtin"] = { fg = p.parameter },
	}

	link_all(groups, "Attribute", {
		"@annotation",
		"@attribute",
		"@attribute.builtin",
	})
	link_all(groups, "PreProc", { "@keyword.directive" })
	link_all(groups, "Define", { "@keyword.directive.define" })
	link_all(groups, "Macro", { "@constant.macro", "@function.macro" })
	link_all(groups, "Constant", { "@constant", "@constant.builtin" })
	link_all(groups, "Type", { "@constructor", "@type", "@type.definition" })
	link_all(groups, "Type", { "@type.builtin" })
	link_all(groups, "String", { "@string", "@markup.raw", "@character.rust" })
	link_all(groups, "Character", { "@character" })
	link_all(groups, "SpecialChar", {
		"@character.printf",
		"@character.special",
		"@punctuation.special",
	})
	link_all(groups, "Comment", { "@comment", "@comment.documentation", "@string.documentation" })
	link_all(groups, "Function", {
		"@function",
		"@function.builtin",
		"@function.method",
		"@function.htmldjango",
	})
	link_all(groups, "@function", { "@function.call" })
	link_all(groups, "@function.method", { "@function.method.call", "@keyword.conditional.htmldjango" })
	link_all(groups, "@keyword", {
		"@keyword.coroutine",
		"@keyword.modifier",
		"@keyword.type",
		"@type.qualifier",
	})
	link_all(groups, "Conditional", { "@keyword.conditional" })
	link_all(groups, "Debug", { "@keyword.debug" })
	link_all(groups, "Exception", { "@keyword.exception" })
	link_all(groups, "Repeat", { "@keyword.repeat" })
	link_all(groups, "StorageClass", { "@keyword.storage" })
	link_all(groups, "@operator", { "@keyword.operator" })
	link_all(groups, "@none", { "@markup" })
	link_all(groups, "Macro", { "@markup.environment" })
	link_all(groups, "Type", { "@markup.environment.name" })
	link_all(groups, "Title", { "@markup.heading" })
	link_all(groups, "RenderMarkdownH1Bg", { "@markup.heading.1.markdown" })
	link_all(groups, "RenderMarkdownH2Bg", { "@markup.heading.2.markdown" })
	link_all(groups, "RenderMarkdownH3Bg", { "@markup.heading.3.markdown" })
	link_all(groups, "RenderMarkdownH4Bg", { "@markup.heading.4.markdown" })
	link_all(groups, "RenderMarkdownH5Bg", { "@markup.heading.5.markdown" })
	link_all(groups, "RenderMarkdownH6Bg", { "@markup.heading.6.markdown" })
	link_all(groups, "Special", { "@markup.math" })
	link_all(groups, "Include", { "@module", "@module.builtin", "@namespace.builtin" })
	link_all(groups, "Number", { "@number" })
	link_all(groups, "Float", { "@number.float" })
	link_all(groups, "Operator", { "@operator" })
	link_all(groups, "Property", { "@property", "@property.toml", "@tag.attribute" })
	link_all(groups, "Type", { "@tag" })
	link_all(groups, "Delimiter", { "@tag.delimiter" })
	link_all(groups, "@variable", { "@variable.builtin", "@variable.declaration" })
	link_all(groups, "DiffChange", { "@diff.delta" })
	link_all(groups, "DiffDelete", { "@diff.minus" })
	link_all(groups, "DiffAdd", { "@diff.plus" })

	color_all(groups, p.keyword, {
		"@keyword",
		"@keyword.export",
		"@keyword.function",
		"@keyword.return",
		"@label",
	})
	color_all(groups, p.import, { "@keyword.import" })
	color_all(groups, p.string, { "@markup.raw.markdown_inline" })
	color_all(groups, p.link, { "@markup.link", "@markup.link.label", "@markup.link.label.symbol" })
	color_all(groups, p.ok, { "@markup.list.checked" })
	color_all(groups, p.grey_light, { "@markup.list.unchecked" })
	color_all(groups, p.punctuation, {
		"@markup.list",
		"@markup.list.markdown",
		"@punctuation.bracket",
		"@punctuation.delimiter",
		"@punctuation.special.markdown",
		"@punctuation.special.htmldjango",
		"@tag.delimiter.tsx",
	})
	color_all(groups, p.type, {
		"@tag.builtin.tsx",
		"@tag.javascript",
		"@tag.jsx",
		"@tag.tsx",
	})

	return groups
end

return M
