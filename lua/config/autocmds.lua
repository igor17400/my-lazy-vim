-- Autocmds are automatically loaded on the VeryLazy event
local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

vim.api.nvim_create_autocmd("ColorScheme", {
  group = augroup("fix_explorer_opacity"),
  callback = function()
    -- 1. Remove solid background boxes to let terminal transparency through
    vim.api.nvim_set_hl(0, "SnacksPickerList", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "SnacksPickerRow", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "SnacksPickerBox", { bg = "NONE" })

    -- 2. Adjust text colors for a "softer" look (lower contrast)
    -- Using a softer gray (#665c54) instead of harsh black
    vim.api.nvim_set_hl(0, "SnacksPickerPathHidden", { fg = "#665c54", bg = "NONE" })
    vim.api.nvim_set_hl(0, "SnacksPickerPathIgnored", { fg = "#665c54", bg = "NONE" })

    -- 3. Soften the Directory and Git colors
    vim.api.nvim_set_hl(0, "SnacksPickerDirectory", { fg = "#458588", bold = true, bg = "NONE" })
    vim.api.nvim_set_hl(0, "SnacksPickerGitStatusUntracked", { fg = "#d65d0e", bg = "NONE" })

    -- 4. Make the selection bar (the blue bar) slightly less intense
    -- This sets the selection background to a very light gray or transparent
    vim.api.nvim_set_hl(0, "SnacksPickerMatch", { fg = "#af3a03", bold = true })
  end,
})

-- Apply changes immediately
vim.api.nvim_exec_autocmds("ColorScheme", {})
