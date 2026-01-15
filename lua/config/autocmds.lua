-- Autocmds are automatically loaded on the VeryLazy event
local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

vim.api.nvim_create_autocmd("ColorScheme", {
  group = augroup("fix_explorer_opacity"),
  callback = function()
    -- 1. Set dark brown background for explorer
    local dark_bg = "#3c2f29" -- Dark brown background
    vim.api.nvim_set_hl(0, "SnacksPickerList", { bg = dark_bg })
    vim.api.nvim_set_hl(0, "SnacksPickerRow", { bg = dark_bg })
    vim.api.nvim_set_hl(0, "SnacksPickerBox", { bg = dark_bg })

    -- 2. Adjust text colors for better visibility
    -- Set bright color for normal/committed files (default text)
    vim.api.nvim_set_hl(0, "SnacksPickerFile", { fg = "#ebdbb2", bg = "NONE" }) -- Bright cream color
    vim.api.nvim_set_hl(0, "SnacksPickerText", { fg = "#ebdbb2", bg = "NONE" }) -- Bright cream color

    -- Keep hidden/ignored files dimmer
    vim.api.nvim_set_hl(0, "SnacksPickerPathHidden", { fg = "#665c54", bg = "NONE" })
    vim.api.nvim_set_hl(0, "SnacksPickerPathIgnored", { fg = "#665c54", bg = "NONE" })

    -- 3. Soften the Directory and Git colors
    vim.api.nvim_set_hl(0, "SnacksPickerDirectory", { fg = "#458588", bold = true, bg = "NONE" })
    vim.api.nvim_set_hl(0, "SnacksPickerGitStatusUntracked", { fg = "#d65d0e", bg = "NONE" })

    -- Soften git staged files color (was too bright)
    vim.api.nvim_set_hl(0, "SnacksPickerGitStatusStaged", { fg = "#98971a", bg = "NONE" })

    -- 4. Make the selection bar (the blue bar) slightly less intense
    -- This sets the selection background to a very light gray or transparent
    vim.api.nvim_set_hl(0, "SnacksPickerMatch", { fg = "#af3a03", bold = true })
  end,
})

-- Apply changes immediately
vim.api.nvim_exec_autocmds("ColorScheme", {})
