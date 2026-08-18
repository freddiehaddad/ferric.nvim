--- @diagnostic disable: undefined-global

--- @class FerricConfig
--- @field terminal_colors boolean?
--- @field overrides table<string, table>?
--- @field palette_overrides table<string, string>?

local M = {}

M.defaults = {
	terminal_colors = true,
	palette_overrides = {},
	overrides = {},
}

--- @param current FerricConfig
--- @param config FerricConfig?
--- @return FerricConfig
function M.extend(current, config)
	return vim.tbl_extend("force", current, config or {})
end

return M
