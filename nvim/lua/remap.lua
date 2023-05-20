vim.g.mapleader = " "
vim.keymap.set("i", "jj", "<Esc>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<C-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>")
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>")

vim.keymap.set("n", "<leader>ha", ":vertical resize -5<CR>")
vim.keymap.set("n", "<leader>hd", ":vertical resize +5<CR>")
vim.keymap.set("n", "<leader>va", ":resize -5<CR>")
vim.keymap.set("n", "<leader>vd", ":resize +5<CR>")
vim.keymap.set("n", "<leader>br", ":bufdo e<CR>")
vim.keymap.set("n", "<leader>f", ':let @+=expand("%:p")<CR>')

-- Run the default formatter set in null-ls.lua
vim.keymap.set("n", "<leader>rl", function()
  vim.lsp.buf.format({
    filter = function(client)
      return client.name == "null-ls"
    end,
    timeout_ms = 3000,
  })
end)

-- Calls test runner on current file in new tmux pane
vim.keymap.set("n", "<C-r>", "", {
  callback = function()
    local file = vim.fn.expand("%:p")
    local file_type = file:match("^.+(%..+)$")

    if file_type == ".rb" then
      vim.cmd(':VimuxRunCommand("clear; bundle exec rspec " . bufname("%"))')
    elseif file_type == ".js" or file_type == ".jsx" then
      vim.cmd(':VimuxRunCommand("clear; yarn test " . bufname("%"))')
    else
      print("Test runner not found for the file type", file_type)
    end
  end,
})

vim.keymap.set("n", "<C-t>", ":NERDTreeToggle<CR>")
vim.keymap.set("n", "<C-e>", ':VimuxRunCommand("clear; bundle exec rspec " . bufname("%") . ":" . line("."))<CR>')
