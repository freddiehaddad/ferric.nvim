local M = {}

function M.get()
	return {
		-- Staged signs match unstaged signs; icons distinguish them.
		GitSignsStagedAdd = { link = "Added" },
		GitSignsStagedChange = { link = "Changed" },
		GitSignsStagedDelete = { link = "Removed" },
		GitSignsStagedChangedelete = { link = "Changed" },
		GitSignsStagedTopdelete = { link = "Removed" },
		GitSignsStagedUntracked = { link = "Added" },
		GitSignsStagedAddNr = { link = "Added" },
		GitSignsStagedChangeNr = { link = "Changed" },
		GitSignsStagedDeleteNr = { link = "Removed" },
		GitSignsStagedChangedeleteNr = { link = "Changed" },
		GitSignsStagedTopdeleteNr = { link = "Removed" },
		GitSignsStagedUntrackedNr = { link = "Added" },
		GitSignsStagedAddCul = { link = "Added" },
		GitSignsStagedChangeCul = { link = "Changed" },
		GitSignsStagedDeleteCul = { link = "Removed" },
		GitSignsStagedChangedeleteCul = { link = "Changed" },
		GitSignsStagedTopdeleteCul = { link = "Removed" },
		GitSignsStagedUntrackedCul = { link = "Added" },
		GitSignsStagedAddLn = { link = "DiffAdd" },
		GitSignsStagedChangeLn = { link = "DiffChange" },
		GitSignsStagedChangedeleteLn = { link = "DiffChange" },
		GitSignsStagedUntrackedLn = { link = "DiffAdd" },
	}
end

return M
