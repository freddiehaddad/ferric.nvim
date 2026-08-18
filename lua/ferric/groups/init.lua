local modules = {
	{ name = "editor", value = require("ferric.groups.editor") },
	{ name = "syntax", value = require("ferric.groups.syntax") },
	{ name = "treesitter", value = require("ferric.groups.treesitter") },
	{ name = "semantic_tokens", value = require("ferric.groups.semantic_tokens") },
	{ name = "diagnostics", value = require("ferric.groups.diagnostics") },
	{ name = "plugins.gitsigns", value = require("ferric.groups.plugins.gitsigns") },
	{ name = "plugins.dap", value = require("ferric.groups.plugins.dap") },
	{ name = "plugins.markview", value = require("ferric.groups.plugins.markview") },
	{ name = "plugins.render_markdown", value = require("ferric.groups.plugins.render_markdown") },
	{ name = "plugins.fzf_lua", value = require("ferric.groups.plugins.fzf_lua") },
	{ name = "plugins.telescope", value = require("ferric.groups.plugins.telescope") },
	{ name = "plugins.blink", value = require("ferric.groups.plugins.blink") },
	{ name = "plugins.mini", value = require("ferric.groups.plugins.mini") },
}

local M = {}

function M.get(palette)
	local groups = {}

	for _, module in ipairs(modules) do
		for group, settings in pairs(module.value.get(palette)) do
			if groups[group] then
				error(("duplicate highlight group %q in %s"):format(group, module.name))
			end

			groups[group] = settings
		end
	end

	return groups
end

return M
