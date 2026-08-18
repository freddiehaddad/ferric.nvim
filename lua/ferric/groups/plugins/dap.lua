local M = {}

function M.get(p)
	return {
		DapStoppedSign = { fg = p.verdigris, bg = p.crucible },
	}
end

return M
