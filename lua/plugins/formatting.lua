return {
  -- Disable conform.nvim (formatter) by default
  {
    "stevearc/conform.nvim",
    opts = {
      -- Disable format on save globally
      format_on_save = false,
      -- Or enable only for specific filetypes:
      -- format_on_save = function(bufnr)
      --   local ft = vim.bo[bufnr].filetype
      --   if ft == "lua" or ft == "python" then
      --     return { timeout_ms = 500, lsp_format = "fallback" }
      --   end
      -- end,
    },
  },

  -- Disable LSP formatting on save
  {
    "neovim/nvim-lspconfig",
    opts = {
      autoformat = false, -- Disable LazyVim's autoformat
    },
  },

  -- Disable nvim-lint by default
  {
    "mfussenegger/nvim-lint",
    opts = function(_, opts)
      -- Clear all linters by default
      opts.linters_by_ft = {}
      
      -- Or enable only for specific filetypes:
      -- opts.linters_by_ft = {
      --   lua = { "luacheck" },
      --   python = { "pylint" },
      -- }
      
      return opts
    end,
  },
}
