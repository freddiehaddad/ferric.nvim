local M = {}

local roles = {
	bg = "void",
	bg_alt = "forge",
	bg_soft = "crucible",
	surface = "smelt",
	selection = "quench_bright",
	border = "quench_edge",
	float_bg = "quench_dark",
	visual = "alloy",
	scrollbar = "quench_mid",
	grey_warm = "line_number",
	comment = "muted",
	preproc = "muted",
	grey = "muted",
	grey_mid = "slag",
	grey_light = "tarnish",
	grey_pale = "cast_iron",
	silver = "cast_iron",
	fg = "limestone",
	fg_bright = "bright_limestone",
	import = "line_number",
	module = "slag",
	punctuation = "tarnish",
	parameter = "cast_iron",
	keyword = "ember",
	func = "cobalt",
	type = "patina",
	string = "verdigris",
	signal = "copper",
	link = "doc_link",
	constant = "forge_amber",
	error = "rust",
	warning = "forge_amber",
	info = "cobalt",
	hint = "patina",
	ok = "verdigris",
	git_add = "verdigris",
	git_change = "forge_amber",
	git_delete = "brick",
	diff_add = "quench",
	diff_change = "temper",
	diff_delete = "scale",
}

function M.resolve(palette)
	for role, swatch in pairs(roles) do
		if palette[role] == nil then
			palette[role] = palette[swatch]
		end
	end

	palette.number = palette.number or palette.keyword
	palette.none = "NONE"

	return palette
end

return M
