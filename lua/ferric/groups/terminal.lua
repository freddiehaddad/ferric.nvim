local M = {}

function M.get(p, light)
	return {
		--- @format disable
		light and p.limestone or p.void,    -- 0  black
		p.brick,                            -- 1  red
		p.verdigris,                        -- 2  green
		p.forge_amber,                      -- 3  yellow
		p.cobalt,                           -- 4  blue
		p.oxidized,                         -- 5  magenta
		p.patina,                           -- 6  cyan
		light and p.tarnish or p.limestone, -- 7  white
		light and p.muted or p.slag,        -- 8  bright black
		p.bright_rust,                      -- 9  bright red
		p.bright_verdigris,                 -- 10 bright green
		p.bright_amber,                     -- 11 bright yellow
		p.bright_cobalt,                    -- 12 bright blue
		p.bright_oxidized,                  -- 13 bright magenta
		p.bright_patina,                    -- 14 bright cyan
		p.bright_limestone,                 -- 15 bright white
		--- @format enable
	}
end

return M
