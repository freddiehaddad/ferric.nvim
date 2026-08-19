local M = {
	forge = require("ferric.palettes.forge"),
	steel = require("ferric.palettes.steel"),
	graphite = require("ferric.palettes.graphite"),
}

function M.get(family, background)
	if not family then
		error("Ferric theme family is required")
	end

	local theme = M[family]
	if not theme then
		error(("unknown Ferric theme family %q"):format(family))
	end

	return theme[background] or theme.dark
end

return M
