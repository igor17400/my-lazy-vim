return {
  -- Configure Conform to use Ruff
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        -- ruff_organize_imports: sorts imports (isort equivalent)
        -- ruff_format: fixes indentation and spacing (black equivalent)
        python = { "ruff_organize_imports", "ruff_format" },
      },
    },
  },

  -- Keep venv-selector configured for your uv environment
  {
    "linux-cultist/venv-selector.nvim",
    opts = {
      settings = {
        options = {
          notify_user_on_venv_change = true,
        },
      },
    },
  },
}
