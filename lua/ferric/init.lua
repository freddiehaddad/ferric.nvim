--- @diagnostic disable: undefined-global

local Config = require("ferric.config")
local Highlights = require("ferric.highlights")

local Ferric = {}

Ferric.config = vim.deepcopy(Config.defaults)

--- @param config FerricConfig?
Ferric.setup = function(config)
	Ferric.config = Config.extend(Ferric.config, config)
end

--- @param family "forge"|"steel"|"graphite"
--- @param colors_name string
Ferric.load = function(family, colors_name)
	assert(family, "Ferric theme family is required")
	assert(colors_name, "Ferric colorscheme name is required")

	if vim.g.colors_name then
		vim.cmd.hi("clear")
	end

	vim.o.termguicolors = true

	Highlights.apply(Ferric.config, family)
	vim.g.colors_name = colors_name
end

return Ferric
