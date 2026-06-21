return {
  {
    "mason-org/mason-lspconfig.nvim",
    opts = function(_, opts)
      opts.ensure_installed = vim.tbl_filter(function(server)
        return server ~= "nil_ls"
      end, opts.ensure_installed or {})

      if not vim.tbl_contains(opts.ensure_installed, "nixd") then
        table.insert(opts.ensure_installed, "nixd")
      end
    end,
  },
}
