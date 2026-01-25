-- Configure lua_ls
local lua_ls_config = require("lsp.lua_ls")
vim.lsp.config("lua_ls", lua_ls_config)

-- Configure zls
local zls_config = require("lsp.zls")
vim.lsp.config("zls", zls_config)

-- Enable LSP servers
vim.lsp.enable({
  "lua_ls",
  "zls",
})

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    print("vim.lsp started")
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client:supports_method('textDocument/completion') then
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
      
      -- Keybindings for completion
      local function check_completion_menu()
        return vim.fn.pumvisible() == 1
      end
      
      -- Enter: confirm completion if menu is visible (without newline), otherwise newline
      vim.keymap.set("i", "<CR>", function()
        if check_completion_menu() then
          -- Use <C-y> to confirm completion without newline
          return "<C-y>"
        else
          return "<CR>"
        end
      end, { expr = true, buffer = ev.buf, desc = "Confirm completion or newline" })
      
      -- Helper function to check if snippet is active and jump
      local function jump_snippet(direction)
        -- Check if snippet is active first
        if vim.snippet.active({ direction = direction }) then
          vim.snippet.jump(direction)
          return true
        end
        return false
      end
      
      -- Tab: navigate completion menu, then snippet placeholders, otherwise tab
      vim.keymap.set("i", "<Tab>", function()
        if check_completion_menu() then
          return "<C-n>"
        elseif jump_snippet(1) then
          return ""
        else
          return "<Tab>"
        end
      end, { expr = true, buffer = ev.buf, desc = "Navigate completion, snippet, or tab" })
      
      -- Shift+Tab: navigate completion menu backwards, then snippet placeholders backwards
      vim.keymap.set("i", "<S-Tab>", function()
        if check_completion_menu() then
          return "<C-p>"
        elseif jump_snippet(-1) then
          return ""
        else
          return "<S-Tab>"
        end
      end, { expr = true, buffer = ev.buf, desc = "Navigate completion or snippet backwards" })
    end
  end,
})
