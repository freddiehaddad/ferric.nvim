local M = {}

local signs = {
	Add = "Added",
	Change = "Changed",
	Delete = "Removed",
	Changedelete = "Changed",
	Topdelete = "Removed",
	Untracked = "Added",
}

local lines = {
	Add = "DiffAdd",
	Change = "DiffChange",
	Delete = "DiffDelete",
	Changedelete = "DiffChange",
	Topdelete = "DiffDelete",
	Untracked = "DiffAdd",
}

function M.get(p)
	local groups = {
		GitSignsCurrentLineBlame = { fg = p.line_number, italic = true },
		GitSignsAddPreview = { link = "DiffAdd" },
		GitSignsDeletePreview = { link = "DiffDelete" },
		GitSignsNoEOLPreview = { link = "NonText" },
		GitSignsDeleteVirtLn = { link = "DiffDelete" },
		GitSignsVirtLnum = { link = "LineNr" },
		GitSignsAddInline = { fg = p.bg, bg = p.git_add },
		GitSignsChangeInline = { fg = p.bg, bg = p.git_change },
		GitSignsDeleteInline = { fg = p.bg, bg = p.git_delete },
		GitSignsAddLnInline = { link = "GitSignsAddInline" },
		GitSignsChangeLnInline = { link = "GitSignsChangeInline" },
		GitSignsDeleteLnInline = { link = "GitSignsDeleteInline" },
	}

	for kind, target in pairs(signs) do
		for _, suffix in ipairs({ "", "Nr", "Cul" }) do
			groups["GitSigns" .. kind .. suffix] = { link = target }
			groups["GitSignsStaged" .. kind .. suffix] = { link = target }
		end
	end

	for kind, target in pairs(lines) do
		groups["GitSigns" .. kind .. "Ln"] = { link = target }
		groups["GitSigns" .. kind .. "VirtLn"] = { link = target }
		groups["GitSignsStaged" .. kind .. "Ln"] = { link = target }
	end

	return groups
end

return M
