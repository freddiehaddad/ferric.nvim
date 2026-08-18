--- @diagnostic disable: undefined-global

local Config = require("ferric.config")
local Highlights = require("ferric.highlights")

local Ferric = {}

Ferric.config = vim.deepcopy(Config.defaults)

--- @param config FerricConfig?
Ferric.setup = function(config)
	Ferric.config = Config.extend(Ferric.config, config)
end

Ferric.load = function()
	if vim.g.colors_name then
		vim.cmd.hi("clear")
	end

	vim.g.colors_name = "ferric"
	vim.o.termguicolors = true

	Highlights.apply(Ferric.config)
end

return Ferric
