return {
  -- 1. Add Treesitter support for highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "markdown", "markdown_inline", "mdx" })
      end
    end,
  },

  -- 2. Add LSP support for intellisense
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        mdx_analyzer = {},
      },
    },
  },

  -- 3. Ensure .mdx files are recognized correctly
  {
    "neovim/nvim-lspconfig",
    opts = function()
      vim.filetype.add({
        extension = {
          mdx = "mdx",
        },
      })
    end,
  },
}
