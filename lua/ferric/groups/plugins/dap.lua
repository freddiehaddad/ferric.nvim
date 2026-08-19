local M = {}

function M.get()
	return {
		DapBreakpoint = { link = "DiagnosticError" },
		DapBreakpointCondition = { link = "DiagnosticWarn" },
		DapBreakpointRejected = { link = "Comment" },
		DapLogPoint = { link = "DiagnosticInfo" },
		DapStopped = { link = "DiagnosticOk" },
	}
end

return M
