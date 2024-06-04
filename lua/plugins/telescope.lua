return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("telescope").setup({
        defaults = {
          prompt_prefix = " ",
          selection_caret = " ",
          entry_prefix = " ",
          color_devicons = false, -- Disable icons
          disable_devicons = true,
        },
        pickers = {
          find_files = {
            previewer = false,
            theme = "ivy",
          },
          live_grep = {
            previewer = false,
            theme = "ivy",
          },
          diagnostics = {
            previewer = false,
            theme = "ivy",
          },
          buffers = {
            previewer = false,
            theme = "ivy",
          },
          help_tags = {
            previewer = false,
            theme = "ivy",
          },
        },
      })

      vim.keymap.set("n", "<leader>ff", ":Telescope find_files disable_devicons=true<CR>", {})
      vim.keymap.set("n", "<leader>fg", ":Telescope live_grep disable_devicons=true<CR>", {})
      vim.keymap.set("n", "<leader>fb", ":Telescope buffers disable_devicons=true<CR>", {})
      vim.keymap.set("n", "<leader>fh", ":Telescope help_tags disable_devicons=true<CR>", {})
      vim.keymap.set("n", "<leader>fd", ":Telescope diagnostics disable_devicons=true<CR>", {})
    end,
  },
}
