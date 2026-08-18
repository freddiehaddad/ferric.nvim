local M = {}

function M.get(p)
	return {
		-- Syntax
		Comment = { fg = p.forge_amber },
		Constant = { fg = p.ember },
		Character = { fg = p.verdigris },
		String = { fg = p.verdigris },
		Identifier = { fg = p.tarnish },
		Function = { fg = p.cobalt },
		Statement = { fg = p.limestone },
		Conditional = { fg = p.bluing },
		Repeat = { fg = p.bluing },
		Label = { fg = p.limestone },
		Exception = { fg = p.bluing },
		Operator = { fg = p.slag },
		Keyword = { fg = p.limestone },
		PreProc = { fg = p.limestone },
		Include = { fg = p.limestone },
		Macro = { fg = p.limestone },
		Type = { fg = p.patina },
		StorageClass = { fg = p.patina },
		Structure = { fg = p.patina },
		Special = { fg = p.copper },
		Delimiter = { fg = p.slag },
		Error = { fg = p.rust },
		Todo = { fg = p.void, bg = p.forge_amber, bold = true },
		PreInsert = { fg = p.slag },

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
	}
end

return M
