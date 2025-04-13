return {
  {
    "nvim-tree/nvim-tree.lua",
    config = function()
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      -- optionally enable 24-bit colour
      vim.opt.termguicolors = true

      require("nvim-tree").setup({
        sort = {
          sorter = "case_sensitive",
        },
        diagnostics = {
          enable = false,
        },
        view = {
          width = 48,
          cursorline = false,
        },
        renderer = {
          root_folder_label = ':~',
          group_empty = true,
          icons = {
            show = {
              file = false,
              folder = false,
              git = false,
              diagnostics = false,
              bookmarks = false,
              folder_arrow = false,
            },
          },
        },
        filters = {
          dotfiles = false,
        },
      })

      vim.api.nvim_set_keymap("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
    end,
  },
}
