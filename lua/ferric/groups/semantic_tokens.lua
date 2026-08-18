local M = {}

function M.get(p)
	return {
		["@lsp.type.decorator"] = { fg = p.limestone },

		-- Some servers tag every comment as this bare type. Clearing it lets
		-- Treesitter preserve its comment/documentation distinction.
		["@lsp.type.comment"] = {},
		["@lsp.type.function"] = { fg = p.limestone },
		["@lsp.type.method"] = { fg = p.limestone },
		["@lsp.typemod.function.declaration"] = { fg = p.cobalt },
		["@lsp.typemod.function.definition"] = { fg = p.cobalt },
		["@lsp.typemod.method.declaration"] = { fg = p.cobalt },
		["@lsp.typemod.method.definition"] = { fg = p.cobalt },
		["@lsp.type.property"] = { fg = p.limestone },
		["@lsp.type.macro"] = { fg = p.limestone },
		["@lsp.type.parameter"] = { fg = p.cast_iron },
		["@lsp.typemod.variable.declaration"] = { fg = p.cast_iron },
		["@lsp.typemod.variable.definition"] = { fg = p.cast_iron },
		["@lsp.mod.unsafe"] = { fg = p.oxidized },
		["@lsp.typemod.keyword.controlFlow"] = { fg = p.bluing },
		["@lsp.typemod.comment.documentation"] = { fg = p.documentation },
	}
end

return M
