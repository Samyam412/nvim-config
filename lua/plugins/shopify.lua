return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      local ruby_lsp = vim.fn.expand("~/.asdf/shims/ruby-lsp")

      opts.servers = opts.servers or {}
      opts.servers.ruby_lsp = opts.servers.ruby_lsp or {}
      opts.servers.ruby_lsp.mason = false

      if vim.fn.executable(ruby_lsp) == 1 then
        opts.servers.ruby_lsp.cmd = { ruby_lsp }
      end
    end,
  },
}
