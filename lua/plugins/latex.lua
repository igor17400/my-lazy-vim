return {
  {
    "lervag/vimtex",
    lazy = false, -- VimTeX recommends not lazy-loading
    init = function()
      vim.g.vimtex_mappings_prefix = "<leader>t"
      -- VimTeX configuration goes here
      vim.g.vimtex_view_method = "skim"
      vim.g.vimtex_compiler_method = "latexmk"

      -- Keep prettified math / Greek / arrows etc. but stop hiding
      -- layout commands (\vspace, \vfill, \hspace, \par, ...). Without
      -- `spacing = 0` those commands render transparent in the buffer.
      vim.g.vimtex_syntax_conceal = {
        accents = 1,
        ligatures = 1,
        cites = 1,
        fancy = 1,
        greek = 1,
        math_bounds = 1,
        math_delimiters = 1,
        math_fracs = 1,
        math_super_sub = 1,
        math_symbols = 1,
        sections = 0,
        styles = 1,
        spacing = 0,
      }
    end,
  },
}
