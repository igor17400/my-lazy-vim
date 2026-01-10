-- Fix git ignored files being too transparent in snacks.explorer (light theme)
return {
  {
    "folke/snacks.nvim",
    opts = function(_, opts)
      -- Set dim highlight to be visible on light background
      -- Adjust the color to your preference:
      --   #928374 = lighter (more transparent look)
      --   #7c6f64 = medium
      --   #504945 = darker (more visible)
      vim.api.nvim_set_hl(0, "SnacksDim", { fg = "#7c6f64" })

      vim.api.nvim_create_autocmd("ColorScheme", {
        callback = function()
          vim.api.nvim_set_hl(0, "SnacksDim", { fg = "#7c6f64" })
        end,
      })

      return opts
    end,
  },
}
