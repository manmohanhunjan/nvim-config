-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<D-s>", "<cmd>w<cr>", { desc = "Save file" })
vim.keymap.set("i", "<D-s>", "<Esc><cmd>w<cr>i", { desc = "Save file" })

-- Normal + Insert mode: Cmd + Backspace to delete entire line
vim.keymap.set({ "i", "n" }, "<D-BS>", "<Esc>0d$<Esc>i", { desc = "Delete entire line" })

-- Insert mode: Option + Backspace to delete previous word
vim.keymap.set("i", "<A-BS>", "<C-w>", { desc = "Delete previous word" })

-- Yank current file path relative to cwd to system clipboard
vim.keymap.set("n", "<leader>fy", function()
  local relpath = vim.fn.expand("%:.")
  if relpath == "" then
    vim.notify("No file in current buffer", vim.log.levels.WARN)
    return
  end
  vim.fn.setreg("+", relpath)
  vim.notify("Yanked: " .. relpath)
end, { desc = "Yank Relative File Path" })
