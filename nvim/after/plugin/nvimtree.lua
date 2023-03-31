vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.keymap.set('n', '<C-t>', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<leader>ff', ':NvimTreeFindFile<CR>')

require("nvim-tree").setup()

local function open_nvim_tree()
  require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
