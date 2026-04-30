return {
  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      opts.cmdline = opts.cmdline or {}

      if opts.sources and opts.sources.cmdline then
        opts.cmdline.sources = opts.cmdline.sources or opts.sources.cmdline
        opts.sources.cmdline = nil

        if vim.tbl_isempty(opts.sources) then
          opts.sources = nil
        end
      end
    end,
  },
}
