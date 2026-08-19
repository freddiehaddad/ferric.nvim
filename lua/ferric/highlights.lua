--- @diagnostic disable: undefined-global

local Groups = require("ferric.groups")
local Palette = require("ferric.palette")
local palettes = require("ferric.palettes")
local Terminal = require("ferric.groups.terminal")

local M = {}

--- @param config FerricConfig
--- @param family "forge"|"steel"|"graphite"
local function resolve(config, family)
	local palette = vim.deepcopy(palettes.get(family, vim.o.background))

	for color, hex in pairs(config.palette_overrides) do
		palette[color] = hex
	end

	Palette.resolve(palette)

	local groups = Groups.get(palette)

	for group, highlight in pairs(config.overrides) do
		if groups[group] then
			groups[group].link = nil
		end

		groups[group] = vim.tbl_extend("force", groups[group] or {}, highlight)
	end

	return palette, groups
end

--- @param config FerricConfig
--- @param family "forge"|"steel"|"graphite"
function M.apply(config, family)
	local palette, groups = resolve(config, family)

	if config.terminal_colors then
		for index, color in ipairs(Terminal.get(palette, vim.o.background == "light")) do
			vim.g["terminal_color_" .. index - 1] = color
		end
	end

	for group, settings in pairs(groups) do
		vim.api.nvim_set_hl(0, group, settings)
	end
end

return M
