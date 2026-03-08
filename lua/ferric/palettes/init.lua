-- Aggregate module exposing both Ferric palettes keyed by `vim.o.background`
-- value. The colorscheme picks the matching entry each time it loads, so
-- toggling `vim.o.background` and re-running `:colorscheme ferric` switches
-- the theme. Both tables expose the identical set of keys; the highlight
-- definitions in `ferric.init` are background-agnostic.

return {
	dark = require("ferric.palettes.dark"),
	light = require("ferric.palettes.light"),
}
