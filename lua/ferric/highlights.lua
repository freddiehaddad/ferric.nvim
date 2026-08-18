--- @diagnostic disable: undefined-global

local Groups = require("ferric.groups")
local palettes = require("ferric.palettes")
local Terminal = require("ferric.groups.terminal")

local M = {}

--- @param config FerricConfig
local function resolve(config)
	local palette = vim.deepcopy(palettes[vim.o.background] or palettes.dark)

	for color, hex in pairs(config.palette_overrides) do
		palette[color] = hex
	end

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
function M.apply(config)
	local palette, groups = resolve(config)

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
