return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  init = function()
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
    vim.keymap.set("n", "<C-p>", builtin.git_files, {})
    vim.keymap.set("n", "<C-f>", builtin.live_grep, {})
    vim.keymap.set("n", "<C-o>", builtin.buffers, {})
  end,
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {
    defaults = {
      path_display = { "truncate" },
      preview = {
        treesitter = false, -- Disable treesitter syntax highlighting in preview
      },
    }
  },
}
