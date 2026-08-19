local M = {}

function M.get(p)
	local groups = {
		Comment = { fg = p.comment },
		Constant = { fg = p.constant },
		Character = { fg = p.string },
		String = { fg = p.string },
		Identifier = { fg = p.fg },
		Variable = { fg = p.fg },
		Property = { fg = p.fg },
		Function = { fg = p.func },
		Keyword = { fg = p.keyword },
		Operator = { fg = p.punctuation },
		PreProc = { fg = p.keyword },
		Include = { fg = p.module },
		Define = { fg = p.keyword },
		Macro = { fg = p.keyword },
		Attribute = { fg = p.preproc },
		Number = { fg = p.number },
		Type = { fg = p.type },
		Structure = { fg = p.type },
		Special = { fg = p.signal },
		Delimiter = { fg = p.punctuation },
		Error = { fg = p.error },
		Todo = { fg = p.bg, bg = p.warning, bold = true },
		PreInsert = { fg = p.grey },

		LspDiagnosticsDefaultError = { fg = p.error },
		LspDiagnosticsDefaultWarning = { fg = p.warning },
		LspDiagnosticsDefaultInformation = { fg = p.info },
		LspDiagnosticsDefaultHint = { fg = p.hint },
		LspReferenceRead = { bg = p.bg_soft },
		LspReferenceWrite = { bg = p.bg_soft },
		LspReferenceText = { bg = p.bg_soft },
		LspSignatureActiveParameter = { fg = p.number, bold = true },

		htmlTag = { fg = p.punctuation },
		htmlEndTag = { fg = p.punctuation },
		htmlTagName = { fg = p.type },
		htmlArg = { fg = p.preproc },
		htmlTitle = { fg = p.link, bold = true },
		htmlSpecialTagName = { fg = p.signal },
		htmlLink = { fg = p.link, underline = true },
		htmlSpecialChar = { fg = p.signal },

		diffAdded = { fg = p.git_add },
		diffRemoved = { fg = p.git_delete },
		diffChanged = { fg = p.git_change },
		diffFile = { fg = p.func },
		diffNewFile = { fg = p.ok },
		diffOldFile = { fg = p.error },
		diffLine = { fg = p.grey },
		diffIndexLine = { fg = p.module },

		markdownH1 = { fg = p.link, bold = true },
		markdownH2 = { fg = p.link, bold = true },
		markdownH3 = { fg = p.ui_accent },
		markdownH4 = { fg = p.ui_accent },
		markdownH5 = { fg = p.grey_light },
		markdownH6 = { fg = p.grey },
		markdownHeadingDelimiter = { fg = p.link, bold = true },
		markdownCode = { fg = p.string },
		markdownCodeBlock = { fg = p.string },
		markdownLinkText = { fg = p.link, underline = true },
	}

	for group, target in pairs({
		Boolean = "Constant",
		Float = "Number",
		Statement = "Keyword",
		Conditional = "Keyword",
		Repeat = "Keyword",
		Label = "Keyword",
		Exception = "Keyword",
		StorageClass = "Keyword",
		Typedef = "Type",
		Debug = "Special",
		Ignore = "Comment",
		SpecialChar = "Special",
		SpecialComment = "Comment",
		PreCondit = "PreProc",
	}) do
		groups[group] = { link = target }
	end

	return groups
end

return M
