local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@return table
function M.groups(theme)
  return {
    SnacksDashboardHeader = { fg = theme.palette.Xfunction },
    SnacksDashboardFooter = { fg = theme.palette.xparameter },
    SnacksDashboardValue = { fg = theme.palette.Xoperator },
    SnacksDashboardSpecial = { fg = theme.palette.Xyellow },
  }
end

return M
