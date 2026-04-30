return {
  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    opts = {},
        -- stylua: ignore
        keys = {
            { "<leader>rS", function() require("persistence").load() end, desc = "Restore Session" },
            { "<leader>rs", function() require("persistence").select() end,desc = "Select Session" },
        },
  },
}
