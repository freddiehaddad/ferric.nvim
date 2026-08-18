local M = {}

function M.get(p)
	return {
		["@comment.documentation"] = { fg = p.documentation },
		["@string.documentation"] = { fg = p.documentation },
		["@type.builtin"] = { fg = p.patina },
		["@constructor"] = { fg = p.patina },
		["@attribute"] = { fg = p.limestone },
		["@attribute.builtin"] = { fg = p.limestone },
		["@variable"] = { fg = p.limestone },
		["@variable.builtin"] = { fg = p.limestone },
		["@variable.declaration"] = { fg = p.cast_iron },
		["@variable.parameter"] = { fg = p.cast_iron },
		["@property"] = { fg = p.limestone },
		["@number"] = { fg = p.ember },
		["@number.float"] = { fg = p.ember },
		["@function.builtin"] = { fg = p.limestone },
		["@function.call"] = { fg = p.limestone },
		["@function.method.call"] = { fg = p.limestone },
		["@function.macro"] = { fg = p.limestone },
		["@constant.builtin"] = { fg = p.ember },
		["@constant.macro"] = { fg = p.limestone },
		["@punctuation.special"] = { fg = p.slag },
		["@keyword.conditional"] = { fg = p.bluing },
		["@keyword.conditional.ternary"] = { fg = p.bluing },
		["@keyword.repeat"] = { fg = p.bluing },
		["@keyword.return"] = { fg = p.bluing },
		["@keyword.exception"] = { fg = p.bluing },
		["@keyword.modifier"] = { fg = p.limestone },
		["@keyword.coroutine"] = { fg = p.bluing },
	}
end

return M
