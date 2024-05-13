return {

  { "folke/neodev.nvim", opts = {} },
  { "mfussenegger/nvim-dap", config = function() end },
  { "nvim-neotest/nvim-nio", config = function() end },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "folke/neodev.nvim",
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },
    setup = function()
      require("neodev").setup({
        library = {
          plugins = {
            "rcarriga/nvim-dap-ui",
          },
          types = true,
        },
      })
    end,
  },
}
