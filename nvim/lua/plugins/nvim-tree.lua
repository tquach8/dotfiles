return {
  {
    "nvim-tree/nvim-tree.lua",
    init = function()
      -- Disable netrw at the very start of your init.lua (strongly advised)
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      vim.keymap.set("n", "<C-t>", ":NvimTreeToggle<CR>")
      vim.keymap.set("n", "<leader>ff", ":NvimTreeFindFile<CR>")
    end,
    opts = {},
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
}
