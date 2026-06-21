return {
  {
    "stevearc/oil.nvim",
    lazy = false,
    opts = {
      default_file_explorer = true,
      view_option = {
        show_hidden = false,
      },
      keymaps = {
        ["q"] = { "actions.close", mode = "n" },
        ["<C-c>"] = false,
      },
    },
    keys = {
      { "<leader>e", "<cmd>Oil<cr>", desc = "Oil" },
    },
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  },
  {
    "folke/snacks.nvim",
    opts = {
      explorer = { enabled = false },
    },
    keys = {
      { "<leader>fe", false },
      { "<leader>fE", false },
      { "<leader>e",  false },
      { "<leader>E",  false },
    },
  },
}
