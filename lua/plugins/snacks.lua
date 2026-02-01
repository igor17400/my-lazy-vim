-- Fix git ignored files being too transparent in snacks.explorer (light theme)
return {
  {
    "folke/snacks.nvim",
    opts = function(_, opts)
      -- Set dim highlight to be visible on light background
      vim.api.nvim_set_hl(0, "SnacksDim", { fg = "#7c6f64" })
      -- Custom highlights for lazygit
      vim.api.nvim_set_hl(0, "LazyGitSelectedLine", { bg = "#d5c4a1" }) -- brown for active panel
      vim.api.nvim_set_hl(0, "LazyGitInactiveSelected", { bg = "#d5c4a1" }) -- dark gray for inactive panel

      vim.api.nvim_create_autocmd("ColorScheme", {
        callback = function()
          vim.api.nvim_set_hl(0, "SnacksDim", { fg = "#7c6f64" })
          vim.api.nvim_set_hl(0, "LazyGitSelectedLine", { bg = "#d5c4a1" })
          vim.api.nvim_set_hl(0, "LazyGitInactiveSelected", { bg = "#d5c4a1" })
        end,
      })

      -- Custom lazygit theme
      opts.lazygit = opts.lazygit or {}
      opts.lazygit.theme = {
        selectedLineBgColor = { bg = "LazyGitSelectedLine" }, -- active panel
        inactiveViewSelectedLineBgColor = { bg = "LazyGitInactiveSelected" }, -- inactive panel (diff view)
      }

      return opts
    end,
  },
}
