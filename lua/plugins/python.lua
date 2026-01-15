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
          -- Ensure we search for common venv locations
          activate_venv_in_terminal = true,
        },
        search = {
          venv = {
            command = "fd -td -a -H '^.venv$' . --max-depth=5 --full-path",
          },
        },
      },
    },
    keys = {
      { "<leader>cv", "<cmd>VenvSelect<cr>", desc = "Select VirtualEnv" },
    },
  },

  -- Ensure LSP restarts when venv changes
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      -- Auto-restart LSP when venv changes
      vim.api.nvim_create_autocmd("User", {
        pattern = "VenvChanged",
        callback = function()
          -- Restart LSP clients
          vim.cmd("LspRestart")
        end,
      })
      return opts
    end,
  },
}
